import 'package:mobile1_flutter_coding_test/app/index.dart';

part 'user.freezed.dart';
part 'user.g.dart';

enum UserStatus {
  @JsonValue('online')
  online,
  @JsonValue('offline')
  offline,
  @JsonValue('away')
  away,
  @JsonValue('do_not_disturb')
  doNotDisturb,
}

enum UserRole {
  @JsonValue('admin')
  admin,
  @JsonValue('member')
  member,
}

@freezed
class User with _$User {
  const factory User({
    required String userId,
    required String name,
    required String email,
    required String profilePicture,
    required UserStatus status,
    required UserRole role,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}