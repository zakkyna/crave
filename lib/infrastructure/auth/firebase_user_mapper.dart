import 'package:crave_app/domain/profile/profile.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase;

extension FirebaseUserDomainX on firebase.User {
  Profile toProfile() {
    return Profile(
      uid: uid,
      isPublished: false,
      isNewUser: true,
      phoneNumber: phoneNumber ?? '',
    );
  }
}
