import 'package:crave_app/domain/profile/profile.dart';
import 'package:crave_app/domain/profile/profile_failure.dart';
import 'package:fpdart/fpdart.dart';

abstract class IProfileRepository {
  Future<Either<ProfileFailure, Unit>> updateProfile(Profile profile);
  Future<Either<ProfileFailure, String>> pickPhotoViaCamera();
  Future<Either<ProfileFailure, String>> pickPhotoViaGallery();
  Future<Either<ProfileFailure, String>> uploadPhoto(String path);
  Future<Either<ProfileFailure, String>> deletePhoto(String url);
  Future<Either<ProfileFailure, Profile>> getCurrentProfile();
}
