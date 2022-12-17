import 'package:freezed_annotation/freezed_annotation.dart';

part 'option.freezed.dart';
part 'option.g.dart';

@freezed
class Option with _$Option {
	factory Option({
		String? id,
		String? value,
		bool? isCorrect,
		String? answer,
	}) = _Option;

	factory Option.fromJson(Map<String, dynamic> json) => _$OptionFromJson(json);
}