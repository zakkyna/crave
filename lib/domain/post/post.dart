import 'dart:math' as math;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crave_app/domain/profile/profile_location.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'post.freezed.dart';
part 'post.g.dart';

@freezed
class Post with _$Post {
  const Post._();
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Post({
    required String uid,
    required bool isPublished,
    required int genderId,
    required List<String> photos,
    ProfileLocation? location,
    required String? bio,
    required String? city,
    required String? address,
    required String? state,
    required List<String> likedBy,
    required Map<String, dynamic>? dismissedBy,
  }) = _Post;

  num distanceInKM(GeoPoint geoPoint) {
    final lat1 = geoPoint.latitude;
    final lon1 = geoPoint.longitude;
    final lat2 = location!.geopoint.latitude;
    final lon2 = location!.geopoint.longitude;
    var p = 0.017453292519943295;
    var c = math.cos;
    var a = 0.5 -
        c((lat2 - lat1) * p) / 2 +
        c(lat1 * p) * c(lat2 * p) * (1 - c((lon2 - lon1) * p)) / 2;
    return 12742 * math.asin(math.sqrt(a));
  }

  String distanceInMiles(GeoPoint geoPoint) {
    return (distanceInKM(geoPoint) * 0.6214).toStringAsFixed(2) + ' mi';
  }

  bool isLikedByMe(String uid) {
    return likedBy.contains(uid);
  }

  factory Post.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PostFromJson(json);
}

class TimeStampConverter implements JsonConverter<Timestamp, DateTime> {
  const TimeStampConverter();

  @override
  Timestamp fromJson(DateTime dateTime) {
    return Timestamp.fromDate(dateTime);
  }

  @override
  DateTime toJson(Timestamp timeStamp) {
    return timeStamp.toDate();
  }
}
