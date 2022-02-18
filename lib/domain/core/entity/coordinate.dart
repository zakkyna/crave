import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'coordinate.freezed.dart';
part 'coordinate.g.dart';

@freezed
class Coordinate with _$Coordinate {
  const factory Coordinate({
    required double latitude,
    required double longitude,
  }) = _Coordinate;

  factory Coordinate.fromGeopoint(GeoPoint geopoint) => Coordinate(
        latitude: geopoint.latitude,
        longitude: geopoint.longitude,
      );

  factory Coordinate.fromJson(Map<String, dynamic> json) =>
      _$CoordinateFromJson(json);
}

extension CoordinateX on Coordinate {
  toGeopoint() => GeoPoint(latitude, longitude);
}
