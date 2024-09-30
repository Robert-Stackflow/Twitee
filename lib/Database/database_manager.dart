/*
 * Copyright (c) 2024 Robert-Stackflow.
 *
 * This program is free software: you can redistribute it and/or modify it under the terms of the
 * GNU General Public License as published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without
 * even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along with this program.
 * If not, see <https://www.gnu.org/licenses/>.
 */

import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:twitee/Database/config_dao.dart';
import 'package:twitee/Database/create_table_sql.dart';
import 'package:twitee/Utils/file_util.dart';

class DatabaseManager {
  static const _dbName = "twitee.db";
  static const _dbVersion = 6;
  static Database? _database;
  static final dbFactory = createDatabaseFactoryFfi();

  static bool get initialized => _database != null;

  static Future<Database> getDataBase() async {
    if (_database == null) {
      await initDataBase();
    }
    return _database!;
  }

  static resetDatabase() async {
    await _database?.close();
    _database = null;
  }

  static Future<void> initDataBase() async {
    if (_database == null) {
      String path = join(await FileUtil.getDatabaseDir(), _dbName);
      _database = await dbFactory.openDatabase(
        path,
        options: OpenDatabaseOptions(
          version: _dbVersion,
          singleInstance: true,
          onUpgrade: _onUpgrade,
          onCreate: _onCreate,
        ),
      );
    }
    await ConfigDao.initConfig();
  }

  static Future<void> _onCreate(Database db, int version) async {
    await db.execute(Sql.createConfigTable.sql);
  }

  static Future<void> _onUpgrade(
      Database db, int oldVersion, int newVersion) async {}

  static Future<void> createTable({
    required String tableName,
    required String sql,
  }) async {
    if (await isTableExist(tableName) == false) {
      await (await getDataBase()).execute(sql);
    }
  }

  static Future<bool> isTableExist(
    String tableName, {
    Database? overrideDb,
  }) async {
    var result = await (overrideDb ?? await getDataBase()).rawQuery(
        "select * from Sqlite_master where type = 'table' and name = '$tableName'");
    return result.isNotEmpty;
  }

  static Future<bool> isColumnExist(
    String tableName,
    String columnName, {
    Database? overrideDb,
  }) async {
    var result = await (overrideDb ?? await getDataBase())
        .rawQuery("PRAGMA table_info($tableName)");
    return result.any((element) => element['name'] == columnName);
  }
}
