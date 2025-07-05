import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruits_hub/core/services/database_service.dart';

class FirestoreService implements DatabaseService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Future<void> addData({required String path, required Map<String, dynamic> data}) async {
    await firestore.collection(path).add(data);
  }

  @override
  Future<Map<String, dynamic>> getData({required String path, required String uId}) async {
    var user = await firestore.collection(path).doc(uId).get();

    return user.data() as Map<String, dynamic>;
  }
}
