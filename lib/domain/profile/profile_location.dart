import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_location.freezed.dart';
part 'profile_location.g.dart';

@freezed
class ProfileLocation with _$ProfileLocation {
  const factory ProfileLocation({
    required String geohash,
    @GeoPointConverter() required GeoPoint geopoint,
  }) = _ProfileLocation;

  factory ProfileLocation.fromJson(Map<String, dynamic> json) =>
      _$ProfileLocationFromJson(json);
}

class GeoPointConverter implements JsonConverter<GeoPoint, GeoPoint> {
  const GeoPointConverter();

  @override
  GeoPoint fromJson(GeoPoint geoPoint) {
    return geoPoint;
  }

  @override
  GeoPoint toJson(GeoPoint geoPoint) => geoPoint;
}
