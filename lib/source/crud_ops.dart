import 'package:flutter/material.dart';

/*

// firebase_core ve cloud_firestore pluginlerini import ediyoruz
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class VeriEkle extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String eMail;

  AddUser(this.firstName, this.lastName, this.eMail);

  @override
  Widget build(BuildContext context) {
    // users isimli collection'ı çağırıyoruz ve bu erişim değerini
    // CollectionReference isimli değişkene atıyoruz.

    CollectionReference users = FirebaseFirestore.instance.collection('users');

    Future<void> addUser() {
      // CollectionReference'ı çağırarak yeni bir kullanıcı ekliyoruz.

      return users.add({
        'full_name': fullName, // John Doe
        'company': company, // Stokes and Sons
        'age': age // 42
      })
          .then((value) => print("User Added"))
          .catchError((error) => print("Failed to add user: $error"));
    }

    return TextButton(
      onPressed: addUser,
      child: Text(
        "Add User",
      ),
    );
  }
}

 */
