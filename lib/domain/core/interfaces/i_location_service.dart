import 'package:crave_app/domain/core/entity/coordinate.dart';
import 'package:crave_app/domain/core/entity/location.dart';

abstract class ILocationService {
  Future<Location> getCurrentLocation();
  Future<Coordinate> getCoordinate();
}
