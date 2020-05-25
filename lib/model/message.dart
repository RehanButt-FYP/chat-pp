
import 'package:cloud_firestore/cloud_firestore.dart';

class Message{
  String messageId;
  String content;
  String idTo;
  String idFrom;
  String timeStamp;
  String type;

  Message(this.messageId, this.content, this.idTo, this.idFrom, this.timeStamp,
      this.type); //String pushToken;


  //Fullname(this.firstName, this.lastName);

  Message.fromfirestoresnapshot(DocumentSnapshot snap)
      : messageId = snap.documentID,
        content = snap.data['content'],
        idTo = snap.data['idTo'],
        idFrom=snap.data['idFrom'],
        timeStamp=snap.data[''],
        type=snap.data[''];


  toJson() {
    return {
      'nickName': nickName,
      'photoUrl': photoUrl,
      'chatingWith':chatingWith,
      'createdAt':createdAt,
      'pushToken':pushToken
    };
  }
}