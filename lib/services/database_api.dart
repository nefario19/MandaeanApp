import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart' as models;
import 'package:bushido/app/app.locator.dart';
import 'package:bushido/services/client_api.dart';
import 'package:bushido/services/common/environment.dart';

import '../app/app.logger.dart';

class DatabaseAPI {
  DatabaseAPI() : _db = Databases(locator<ClientAPI>().client);

  final _log = log('DatabaseAPI');
  final Databases _db;

  Future<models.DocumentList?> getALlRows({required String tableId}) async {
    try {
      return await _db.listDocuments(
        databaseId: Environment.databaseId,
        collectionId: tableId,
      );
    } catch (e) {
      _log.e('Failed to get rows from table $tableId', error: e);
    }
    return null;
  }

  Future<void> createRow(
      {required String tableId, required Map<String, dynamic> data}) async {
    try {
      await _db.createDocument(
          databaseId: Environment.databaseId,
          collectionId: tableId,
          documentId: ID.unique(),
          data: data);
    } catch (e) {
      _log.e('Failed to create rows for table $tableId', error: e);
    }
  }

  Future<void> deleteRow(
      {required String tableId, required String rowId}) async {
    try {
      await _db.deleteDocument(
        databaseId: Environment.databaseId,
        collectionId: tableId,
        documentId: rowId,
      );
    } catch (e) {
      _log.e('Failed to delete row for table $tableId', error: e);
    }
  }

  Future<models.Document?> getRow(
      {required String tableId, required String rowId}) async {
    try {
      return await _db.getDocument(
        databaseId: Environment.databaseId,
        collectionId: tableId,
        documentId: rowId,
      );
    } catch (e) {
      _log.e('Failed to get row for table $tableId', error: e);
    }
    return null;
  }

  Future<void> updateRow(
      {required String tableId,
      required String rowId,
      Map<String, dynamic>? data}) async {
    try {
      await _db.updateDocument(
        databaseId: Environment.databaseId,
        collectionId: tableId,
        documentId: rowId,
        data: data ?? {},
      );
    } catch (e) {
      _log.e('Failed to update row for table $tableId', error: e);
    }
  }
}
