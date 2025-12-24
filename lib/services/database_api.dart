import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:bushido/app/app.locator.dart';
import 'package:bushido/services/client_api.dart';
import 'package:bushido/services/common/environment.dart';

import '../app/app.logger.dart';

class DatabaseAPI {
  DatabaseAPI() : _db = TablesDB(locator<ClientAPI>().client);

  final _log = log('DatabaseAPI');
  final TablesDB _db;

  Future<RowList?> getALlRows({required String tableId}) async {
    try {
      return await _db.listRows(
        databaseId: Environment.databaseId,
        tableId: ID.custom(tableId),
      );
    } catch (e) {
      _log.e('Failed to get rows from table $tableId', error: e);
    }
    return null;
  }

  void createRow(
      {required String tableId, required Map<String, dynamic> data}) async {
    try {
      await _db.createRow(
          databaseId: Environment.databaseId,
          tableId: ID.custom(tableId),
          rowId: ID.unique(),
          data: data);
    } catch (e) {
      _log.e('Failed to create rows for table $tableId', error: e);
    }
  }

  void deleteRow({required String tableId, required String rowId}) async {
    try {
      await _db.deleteRow(
        databaseId: Environment.databaseId,
        tableId: ID.custom(tableId),
        rowId: rowId,
      );
    } catch (e) {
      _log.e('Failed to delete row for table $tableId', error: e);
    }
  }

  Future<Row?> getRow({required String tableId, required String rowId}) async {
    try {
      await _db.getRow(
        databaseId: Environment.databaseId,
        tableId: ID.custom(tableId),
        rowId: rowId,
      );
    } catch (e) {
      _log.e('Failed to get row for table $tableId', error: e);
    }
    return null;
  }

  void updateRow({required String tableId, required String rowId}) async {
    try {
      await _db.updateRow(
        databaseId: Environment.databaseId,
        tableId: ID.custom(tableId),
        rowId: rowId,
      );
    } catch (e) {
      _log.e('Failed to update row for table $tableId', error: e);
    }
  }
}
