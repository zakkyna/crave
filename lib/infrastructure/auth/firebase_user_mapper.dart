import 'package:crave_app/domain/auth/user.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase;

extension FirebaseUserDomainX on firebase.User {
  User toDomain() {
    return User(
      id: uid,
      email: email,
      image: photoURL,
    );
  }
}
