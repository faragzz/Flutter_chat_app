import 'package:chat_app/Model/message.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ChatService extends ChangeNotifier {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> sendMessage(String receiverId, String message) async {
    //get current user info
    final String currentUserId = _firebaseAuth.currentUser!.uid;
    final String currentEmail = _firebaseAuth.currentUser!.email.toString();
    final Timestamp timestamp = Timestamp.now();

    //create new message
    Message newMessage = Message(
      senderId: currentUserId,
      senderEmail: currentEmail,
      receiverId: receiverId,
      message: message,
      timestamp: timestamp,
    );

    //construct chat room id form current user id and receiver id ( sorted to ensure uniqueness)
    List<String> ids = [currentUserId, receiverId];
    ids.sort();

    //chat room Id
    String chatRoomId = ids.join('_');
    await _firestore
        .collection('chat_rooms')
        .doc(chatRoomId)
        .collection('messages')
        .add(newMessage.toMap());
  }

  Stream<QuerySnapshot> getMessage(String userId, String otherUserId) {
    List<String> ids = [otherUserId, userId];
    ids.sort();
    String chatRoomId = ids.join('_');
    return _firestore
        .collection('chat_rooms')
        .doc(chatRoomId)
        .collection('messages')
        .orderBy('timestamp', descending: false)
        .snapshots();
  }
}
