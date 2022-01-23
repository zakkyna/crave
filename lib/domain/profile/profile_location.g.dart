// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileLocation _$$_ProfileLocationFromJson(Map<String, dynamic> json) =>
    _$_ProfileLocation(
      geohash: json['geohash'] as String,
      geopoint:
          const GeoPointConverter().fromJson(json['geopoint'] as GeoPoint),
    );

Map<String, dynamic> _$$_ProfileLocationToJson(_$_ProfileLocation instance) =>
    <String, dynamic>{
      'geohash': instance.geohash,
      'geopoint': const GeoPointConverter().toJson(instance.geopoint),
    };
