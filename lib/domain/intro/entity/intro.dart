import 'package:freezed_annotation/freezed_annotation.dart';

part 'intro.freezed.dart';

@freezed
class Intro with _$Intro {
  const factory Intro({
    required String asset,
    required String title,
    required String description,
  }) = _Intro;
}
