import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruits_hub/core/services/database_service.dart';

class FirestoreService implements DatabaseService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
    required String documentId,
  }) async {
    if (documentId.isNotEmpty) {
      await firestore.collection(path).doc(documentId).set(data);
    } else {
      await firestore.collection(path).add(data);
    }
  }

  @override
  Future<dynamic> getData(
      {required String path, String? documentId, Map<String, dynamic>? query}) async {
    if (documentId != null) {
      var user = await firestore.collection(path).doc(documentId).get();

      return user.data() ?? {};
    } else {
      Query<Map<String, dynamic>> data = firestore.collection(path);

      if (query != null) {
        if (query.containsKey('orderBy')) {
          var orderByField = data.orderBy(query['orderBy']);
          var descending = query['descending'];
          data = data.orderBy(orderByField, descending: descending);
        }

        if (query.containsKey('limit')) {
          var limit = query['limit'];
          data = data.limit(limit);
        }
      }

      var result = await data.get();
      return result.docs.map((doc) => doc.data()).toList();
    }
  }

  @override
  Future<bool> checkIfDataExists({required String path, required String documentId}) async {
    var doc = await firestore.collection(path).doc(documentId).get();

    return doc.exists;
  }
}
