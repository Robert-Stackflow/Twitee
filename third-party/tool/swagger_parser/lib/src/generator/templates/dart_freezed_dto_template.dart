import 'package:collection/collection.dart';

import '../../parser/swagger_parser_core.dart';
import '../../parser/utils/case_utils.dart';
import '../../utils/base_utils.dart';
import '../../utils/type_utils.dart';
import '../model/programming_language.dart';

/// Provides template for generating dart DTO using freezed
String dartFreezedDtoTemplate(
  UniversalComponentClass dataClass, {
  required bool markFileAsGenerated,
}) {
  final className = dataClass.name.toPascal;
  bool isUnion = dataClass.ofType != null;
  return isUnion
      ? unionTemplate(dataClass, markFileAsGenerated: markFileAsGenerated)
      : '''
${generatedFileComment(
          markFileAsGenerated: markFileAsGenerated,
        )}${ioImport(dataClass)}import 'package:freezed_annotation/freezed_annotation.dart';
${dartImports(imports: dataClass.imports)}
part '${dataClass.name.toSnake}.freezed.dart';
part '${dataClass.name.toSnake}.g.dart';

${descriptionComment(dataClass.description)}@Freezed()
class $className ${dataClass.parentClass != null ? 'extends ${dataClass.parentClass}' : ''} with _\$$className {
  const factory $className(${dataClass.parameters.isNotEmpty ? '{' : ''}${_parametersToString(
          dataClass.parameters,
        )}${dataClass.parameters.isNotEmpty ? '\n  }' : ''}) = _$className;
  \n  factory $className.fromJson(Map<String, Object?> json) => _\$${className}FromJson(json);
}
''';
}

String unionTemplate(
  UniversalComponentClass dataClass, {
  required bool markFileAsGenerated,
}) {
  final className = dataClass.name.toPascal;
  return '''
${generatedFileComment(
    markFileAsGenerated: markFileAsGenerated,
  )}${ioImport(dataClass)}
${dartImports(imports: dataClass.imports)}
abstract class $className {
  const $className();
  factory $className.fromJson(Map<String, Object?> json){
      switch(json['${dataClass.unionKey}']){
    ${caseString(dataClass,true)}
        default:
           throw ArgumentError('Unknown ${className}: \$json');
      }
  }
  Map<String, Object?> toJson(){
      switch(json['${dataClass.unionKey}']){
    ${caseString(dataClass,false)}
        default:
           throw ArgumentError('Unknown ${className}');
      }
  }
}
  ''';
}

String caseString(UniversalComponentClass dataClass,bool isFrom) {
  String res = "";
  for (var i = 0; i < dataClass.ofRefs!.refs.length; i++) {
    res += '''
    case "${dataClass.ofRefs!.refs[i]}": 
            return ${dataClass.ofRefs!.refs[i]}.${isFrom?"from":"to"}Json(json);
    ''';
  }
  return res;
}

String _parametersToString(List<UniversalType> parameters) {
  final sortedByRequired =
      List<UniversalType>.from(parameters.sorted((a, b) => a.compareTo(b)));
  return sortedByRequired
      .mapIndexed(
        (i, e) =>
            '\n${i != 0 && (e.description?.isNotEmpty ?? false) ? '\n' : ''}${descriptionComment(e.description, tab: '    ')}'
            '${_jsonKey(e)}    ${_required(e)}'
            '${e.toSuitableType(ProgrammingLanguage.dart)} ${e.name},',
      )
      .join();
}

String _jsonKey(UniversalType t) {
  final sb = StringBuffer();
  if ((t.jsonKey == null || t.name == t.jsonKey) && t.defaultValue == null) {
    return '';
  }
  if (t.jsonKey != null && t.name != t.jsonKey) {
    sb.write("    @JsonKey(name: '${protectJsonKey(t.jsonKey)}')\n");
  }
  if (t.defaultValue != null) {
    sb.write('    @Default(${_defaultValue(t)})\n');
  }

  return sb.toString();
}

/// return required if isRequired
String _required(UniversalType t) =>
    t.isRequired && t.defaultValue == null ? 'required ' : '';

/// return defaultValue if have
String _defaultValue(UniversalType t) =>
    '${t.enumType != null ? '${t.type}.${protectDefaultEnum(t.defaultValue)?.toCamel}' : protectDefaultValue(
        t.defaultValue,
        type: t.type,
      )}';
