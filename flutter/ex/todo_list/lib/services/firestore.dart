import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final CollectionReference todolist =
      FirebaseFirestore.instance.collection('todolist');

  Future<void> addTask(String task) {
    return todolist.add({
      'task': task,
    });
  }

  Stream<QuerySnapshot> getTodolistStream() {
    final TodolistStream = todolist.snapshots();
    return TodolistStream;
  }

  Future<void> updateTask(String id, String newTask) {
    return todolist.doc(id).update({
      'task': newTask,
    });
  }

  Future<void> deleteTask(String id) {
    return todolist.doc(id).delete();

  }

}
