import 'package:freezed_annotation/freezed_annotation.dart';


part 'logout_state.freezed.dart';

@freezed
abstract class LogoutState with _$LogoutState {
  const factory LogoutState.initial() = Initial;
  const factory LogoutState.loading() = Loading;
  const factory LogoutState.failure() = Failure;
  const factory LogoutState.success() = Success;
}
