
import 'package:cloud_firestore/cloud_firestore.dart';

class UserProfileMolde{

  final String name;
  final String email;
  final String uid;

 const UserProfileMolde({required this.name, required this.email, required this.uid,});

  factory UserProfileMolde.fromSnapshot( DocumentSnapshot<Map<String, dynamic>> snapshot){

    final data = snapshot.data()!;
    return UserProfileMolde(name: data['name'], email: data['email'], uid: data["uid"]);
  } toJson(){
    return {
      'name':name,
       'email':email,
      'uid':uid,
    };
  }


}

