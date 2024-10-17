part of 'universal_data_class.dart';

/// Enum for OpenApi specification version
enum OfType {
  oneOf,
  allOf,
  anyOf;

  static fromString(String value) {
    switch (value) {
      case 'oneOf':
        return OfType.oneOf;
      case 'allOf':
        return OfType.allOf;
      case 'anyOf':
        return OfType.anyOf;
      default:
        throw ArgumentError('Unknown OfType: $value');
    }
  }
}

/// Universal template for containing information about component

final class UniversalComponentClass extends UniversalDataClass {
  /// Constructor for [UniversalComponentClass]
   UniversalComponentClass({
    required super.name,
    required this.imports,
    required this.parameters,
    this.unionKey,
    this.ofType,
    this.ofRefs,
    this.parentClass,
    this.typeDef = false,
    super.description,
  });

  /// Union property name
  final String? unionKey;

  /// List of additional references to components
  final Set<String> imports;

  /// List of class fields
  final List<UniversalType> parameters;

  /// Type of `of` field
  final OfType? ofType;

  /// Parent class for extending
  String? parentClass;

  /// Temp field for containing info about `of` for future processing
  final ({List<String> refs, List<UniversalType> properties})? ofRefs;

  /// Whether or not this schema is a basic type
  /// "Date": {
  ///   "type": "string",
  ///   "format": "date"
  /// }
  ///  must be DateTime instead of its own class
  final bool typeDef;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UniversalComponentClass &&
          runtimeType == other.runtimeType &&
          const DeepCollectionEquality().equals(imports, other.imports) &&
          const DeepCollectionEquality().equals(parameters, other.parameters) &&
          ofRefs == other.ofRefs &&
          typeDef == other.typeDef;

  @override
  int get hashCode =>
      imports.hashCode ^
      parameters.hashCode ^
      ofRefs.hashCode ^
      typeDef.hashCode;

  @override
  String toString() => 'UniversalComponentClass(imports: $imports, '
      'parameters: $parameters, '
      'allOf: $ofRefs, '
      'typeDef: $typeDef)';
}
