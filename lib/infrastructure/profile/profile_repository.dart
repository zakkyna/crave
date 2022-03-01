import 'dart:async';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crave_app/domain/core/entity/coordinate.dart';
import 'package:crave_app/domain/core/interfaces/i_location_service.dart';
import 'package:crave_app/domain/post/post.dart';
import 'package:crave_app/domain/profile/i_profile_repository.dart';
import 'package:crave_app/domain/profile/profile_failure.dart';
import 'package:crave_app/domain/profile/profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:fpdart/fpdart.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: IProfileRepository)
class ProfileRepository implements IProfileRepository {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;
  final FirebaseStorage _firebaseStorage;
  final Logger logger;
  final ImagePicker _imagePicker;
  final ILocationService _locationService;
  final Geoflutterfire _geoflutterfire;

  ProfileRepository(
    this._firebaseAuth,
    this._firestore,
    this._firebaseStorage,
    this.logger,
    this._imagePicker,
    this._locationService,
    this._geoflutterfire,
  ) : super();

  @override
  Future<Either<ProfileFailure, Profile>> getCurrentProfile() async {
    try {
      final currentUser = _firebaseAuth.currentUser;
      if (currentUser == null) {
        return left(const ProfileFailure.unauthenticated());
      }
      final userSnapshot =
          await _firestore.collection('users').doc(currentUser.uid).get();
      final isNoData =
          userSnapshot.data() == null || (userSnapshot.data()?.isEmpty ?? true);
      if (isNoData) {
        return left(const ProfileFailure.notFound());
      }
      final profile = Profile.fromJson(userSnapshot.data()!);

      return right(profile);
    } on FirebaseException catch (e) {
      return left(ProfileFailure.serverError(e.message ?? 'An error occurred'));
    } catch (e) {
      return left(const ProfileFailure.unexpected());
    }
  }

  @override
  Future<Either<ProfileFailure, Unit>> updateProfile(Profile profile) async {
    try {
      final currentUser = _firebaseAuth.currentUser;
      if (currentUser == null) {
        return left(const ProfileFailure.unauthenticated());
      }

      return await _firestore
          .runTransaction<Either<ProfileFailure, Unit>>((transaction) async {
        try {
          final location = await _locationService.getCurrentLocation();
          final geopoint = _geoflutterfire.point(
              latitude: location.latitude, longitude: location.longitude);
          final updateProfile = profile.copyWith(
            city: location.city,
            state: location.state,
            address: location.address,
            location: null,
          );
          final post = Post(
            uid: updateProfile.uid,
            isPublished: updateProfile.isPublished,
            genderId: updateProfile.genderId!,
            photos: updateProfile.photos!,
            bio: updateProfile.bio!,
            city: location.city,
            state: location.state,
            address: location.address,
            likedBy: [],
            dismissedBy: {},
            location: null,
          );
          final postRef = _firestore.collection('posts').doc(profile.uid);
          final userRef = _firestore.collection('users').doc(profile.uid);
          transaction.set(postRef, post.toJson());
          transaction.update(postRef, {'location': geopoint.data});
          transaction.update(userRef, updateProfile.toJson());
          transaction.update(userRef, {'location': geopoint.data});
          currentUser.updatePhotoURL(updateProfile.profilePicture);
          return right(unit);
        } catch (e) {
          logger.e(e);
          return left<ProfileFailure, Unit>(const ProfileFailure.unexpected());
        }
      }).catchError((e) {
        logger.e(e);
        return left<ProfileFailure, Unit>(const ProfileFailure.unexpected());
      });
    } on FirebaseException catch (e) {
      return left(ProfileFailure.serverError(e.message ?? 'An error occurred'));
    } catch (e, stacktrace) {
      logger.d(stacktrace);
      return left(const ProfileFailure.unexpected());
    }
  }

  @override
  Future<Either<ProfileFailure, String>> pickPhotoViaCamera() async {
    try {
      final pickedFile = await _imagePicker.pickImage(
        source: ImageSource.camera,
        imageQuality: 70,
      );
      if (pickedFile == null) {
        return left(const ProfileFailure.cancelledByUser());
      }
      final path = pickedFile.path;
      return right(path);
    } catch (e, stacktrace) {
      logger.d(stacktrace);
      return left(const ProfileFailure.unexpected());
    }
  }

  @override
  Future<Either<ProfileFailure, String>> pickPhotoViaGallery() async {
    try {
      final pickedFile = await _imagePicker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 70,
      );
      if (pickedFile == null) {
        logger.d('pickedFile: null');
        return left(const ProfileFailure.cancelledByUser());
      }
      final path = pickedFile.path;
      return right(path);
    } catch (e, stacktrace) {
      logger.d(stacktrace);
      return left(const ProfileFailure.unexpected());
    }
  }

  @override
  Future<Either<ProfileFailure, String>> uploadPhoto(String path) async {
    try {
      final currentUser = _firebaseAuth.currentUser;
      if (currentUser == null) {
        return left(const ProfileFailure.unauthenticated());
      }
      logger.d('bisa');
      final _imageFile = File(path);
      final firebaseStorageRef = _firebaseStorage
          .ref('photos')
          .child('${currentUser.uid}/${const Uuid().v1()}.jpg');
      final uploadTask = await firebaseStorageRef.putFile(_imageFile);
      final downloadUrl = await uploadTask.ref.getDownloadURL();
      return right(downloadUrl);
    } on FirebaseException catch (e, stacktrace) {
      logger.d(stacktrace);
      return left(ProfileFailure.serverError(e.message ?? 'An error occurred'));
    } catch (e, stacktrace) {
      logger.d(stacktrace);
      return left(const ProfileFailure.unexpected());
    }
  }

  @override
  Future<Either<ProfileFailure, String>> deletePhoto(
      String path, bool islive) async {
    try {
      final currentUser = _firebaseAuth.currentUser;
      if (currentUser == null) {
        return left(const ProfileFailure.unauthenticated());
      }
      if (!islive) {
        final ref = _firebaseStorage.refFromURL(path);
        await ref.delete();
      }
      return right(path);
    } on FirebaseException catch (e, stacktrace) {
      logger.d(stacktrace);
      return left(ProfileFailure.serverError(e.message ?? 'An error occurred'));
    } catch (e, stacktrace) {
      logger.d(stacktrace);
      return left(const ProfileFailure.unexpected());
    }
  }

  @override
  Future<Either<ProfileFailure, Coordinate>> updateLocation(
    Coordinate coordinate,
  ) async {
    try {
      final currentUser = _firebaseAuth.currentUser;
      if (currentUser == null) {
        return left(const ProfileFailure.unauthenticated());
      }
      final geopoint = _geoflutterfire.point(
          latitude: coordinate.latitude, longitude: coordinate.longitude);

      await _firestore
          .collection('users')
          .doc(currentUser.uid)
          .update({'location': geopoint.data});

      return right(coordinate);
    } catch (e, stacktrace) {
      logger.d(stacktrace);
      return left(const ProfileFailure.unexpected());
    }
  }
}
