// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String phoneNumber) signinWithPhoneNumber,
    required TResult Function(String otp) verifyOTP,
    required TResult Function(
            String firstName, String? lastName, String? filePath)
        createProfile,
    required TResult Function() resendOTP,
    required TResult Function() signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String phoneNumber)? signinWithPhoneNumber,
    TResult? Function(String otp)? verifyOTP,
    TResult? Function(String firstName, String? lastName, String? filePath)?
        createProfile,
    TResult? Function()? resendOTP,
    TResult? Function()? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String phoneNumber)? signinWithPhoneNumber,
    TResult Function(String otp)? verifyOTP,
    TResult Function(String firstName, String? lastName, String? filePath)?
        createProfile,
    TResult Function()? resendOTP,
    TResult Function()? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SigninWithPhoneNumber value)
        signinWithPhoneNumber,
    required TResult Function(_VerifyOTP value) verifyOTP,
    required TResult Function(_CreateProfile value) createProfile,
    required TResult Function(_ResendOTP value) resendOTP,
    required TResult Function(_SignOut value) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SigninWithPhoneNumber value)? signinWithPhoneNumber,
    TResult? Function(_VerifyOTP value)? verifyOTP,
    TResult? Function(_CreateProfile value)? createProfile,
    TResult? Function(_ResendOTP value)? resendOTP,
    TResult? Function(_SignOut value)? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SigninWithPhoneNumber value)? signinWithPhoneNumber,
    TResult Function(_VerifyOTP value)? verifyOTP,
    TResult Function(_CreateProfile value)? createProfile,
    TResult Function(_ResendOTP value)? resendOTP,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AuthEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String phoneNumber) signinWithPhoneNumber,
    required TResult Function(String otp) verifyOTP,
    required TResult Function(
            String firstName, String? lastName, String? filePath)
        createProfile,
    required TResult Function() resendOTP,
    required TResult Function() signOut,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String phoneNumber)? signinWithPhoneNumber,
    TResult? Function(String otp)? verifyOTP,
    TResult? Function(String firstName, String? lastName, String? filePath)?
        createProfile,
    TResult? Function()? resendOTP,
    TResult? Function()? signOut,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String phoneNumber)? signinWithPhoneNumber,
    TResult Function(String otp)? verifyOTP,
    TResult Function(String firstName, String? lastName, String? filePath)?
        createProfile,
    TResult Function()? resendOTP,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SigninWithPhoneNumber value)
        signinWithPhoneNumber,
    required TResult Function(_VerifyOTP value) verifyOTP,
    required TResult Function(_CreateProfile value) createProfile,
    required TResult Function(_ResendOTP value) resendOTP,
    required TResult Function(_SignOut value) signOut,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SigninWithPhoneNumber value)? signinWithPhoneNumber,
    TResult? Function(_VerifyOTP value)? verifyOTP,
    TResult? Function(_CreateProfile value)? createProfile,
    TResult? Function(_ResendOTP value)? resendOTP,
    TResult? Function(_SignOut value)? signOut,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SigninWithPhoneNumber value)? signinWithPhoneNumber,
    TResult Function(_VerifyOTP value)? verifyOTP,
    TResult Function(_CreateProfile value)? createProfile,
    TResult Function(_ResendOTP value)? resendOTP,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SigninWithPhoneNumberImplCopyWith<$Res> {
  factory _$$SigninWithPhoneNumberImplCopyWith(
          _$SigninWithPhoneNumberImpl value,
          $Res Function(_$SigninWithPhoneNumberImpl) then) =
      __$$SigninWithPhoneNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$SigninWithPhoneNumberImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SigninWithPhoneNumberImpl>
    implements _$$SigninWithPhoneNumberImplCopyWith<$Res> {
  __$$SigninWithPhoneNumberImplCopyWithImpl(_$SigninWithPhoneNumberImpl _value,
      $Res Function(_$SigninWithPhoneNumberImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$SigninWithPhoneNumberImpl(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SigninWithPhoneNumberImpl implements _SigninWithPhoneNumber {
  const _$SigninWithPhoneNumberImpl(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'AuthEvent.signinWithPhoneNumber(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SigninWithPhoneNumberImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SigninWithPhoneNumberImplCopyWith<_$SigninWithPhoneNumberImpl>
      get copyWith => __$$SigninWithPhoneNumberImplCopyWithImpl<
          _$SigninWithPhoneNumberImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String phoneNumber) signinWithPhoneNumber,
    required TResult Function(String otp) verifyOTP,
    required TResult Function(
            String firstName, String? lastName, String? filePath)
        createProfile,
    required TResult Function() resendOTP,
    required TResult Function() signOut,
  }) {
    return signinWithPhoneNumber(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String phoneNumber)? signinWithPhoneNumber,
    TResult? Function(String otp)? verifyOTP,
    TResult? Function(String firstName, String? lastName, String? filePath)?
        createProfile,
    TResult? Function()? resendOTP,
    TResult? Function()? signOut,
  }) {
    return signinWithPhoneNumber?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String phoneNumber)? signinWithPhoneNumber,
    TResult Function(String otp)? verifyOTP,
    TResult Function(String firstName, String? lastName, String? filePath)?
        createProfile,
    TResult Function()? resendOTP,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signinWithPhoneNumber != null) {
      return signinWithPhoneNumber(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SigninWithPhoneNumber value)
        signinWithPhoneNumber,
    required TResult Function(_VerifyOTP value) verifyOTP,
    required TResult Function(_CreateProfile value) createProfile,
    required TResult Function(_ResendOTP value) resendOTP,
    required TResult Function(_SignOut value) signOut,
  }) {
    return signinWithPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SigninWithPhoneNumber value)? signinWithPhoneNumber,
    TResult? Function(_VerifyOTP value)? verifyOTP,
    TResult? Function(_CreateProfile value)? createProfile,
    TResult? Function(_ResendOTP value)? resendOTP,
    TResult? Function(_SignOut value)? signOut,
  }) {
    return signinWithPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SigninWithPhoneNumber value)? signinWithPhoneNumber,
    TResult Function(_VerifyOTP value)? verifyOTP,
    TResult Function(_CreateProfile value)? createProfile,
    TResult Function(_ResendOTP value)? resendOTP,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signinWithPhoneNumber != null) {
      return signinWithPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class _SigninWithPhoneNumber implements AuthEvent {
  const factory _SigninWithPhoneNumber(final String phoneNumber) =
      _$SigninWithPhoneNumberImpl;

  String get phoneNumber;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SigninWithPhoneNumberImplCopyWith<_$SigninWithPhoneNumberImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyOTPImplCopyWith<$Res> {
  factory _$$VerifyOTPImplCopyWith(
          _$VerifyOTPImpl value, $Res Function(_$VerifyOTPImpl) then) =
      __$$VerifyOTPImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String otp});
}

/// @nodoc
class __$$VerifyOTPImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$VerifyOTPImpl>
    implements _$$VerifyOTPImplCopyWith<$Res> {
  __$$VerifyOTPImplCopyWithImpl(
      _$VerifyOTPImpl _value, $Res Function(_$VerifyOTPImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
  }) {
    return _then(_$VerifyOTPImpl(
      null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyOTPImpl implements _VerifyOTP {
  const _$VerifyOTPImpl(this.otp);

  @override
  final String otp;

  @override
  String toString() {
    return 'AuthEvent.verifyOTP(otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOTPImpl &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOTPImplCopyWith<_$VerifyOTPImpl> get copyWith =>
      __$$VerifyOTPImplCopyWithImpl<_$VerifyOTPImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String phoneNumber) signinWithPhoneNumber,
    required TResult Function(String otp) verifyOTP,
    required TResult Function(
            String firstName, String? lastName, String? filePath)
        createProfile,
    required TResult Function() resendOTP,
    required TResult Function() signOut,
  }) {
    return verifyOTP(otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String phoneNumber)? signinWithPhoneNumber,
    TResult? Function(String otp)? verifyOTP,
    TResult? Function(String firstName, String? lastName, String? filePath)?
        createProfile,
    TResult? Function()? resendOTP,
    TResult? Function()? signOut,
  }) {
    return verifyOTP?.call(otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String phoneNumber)? signinWithPhoneNumber,
    TResult Function(String otp)? verifyOTP,
    TResult Function(String firstName, String? lastName, String? filePath)?
        createProfile,
    TResult Function()? resendOTP,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (verifyOTP != null) {
      return verifyOTP(otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SigninWithPhoneNumber value)
        signinWithPhoneNumber,
    required TResult Function(_VerifyOTP value) verifyOTP,
    required TResult Function(_CreateProfile value) createProfile,
    required TResult Function(_ResendOTP value) resendOTP,
    required TResult Function(_SignOut value) signOut,
  }) {
    return verifyOTP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SigninWithPhoneNumber value)? signinWithPhoneNumber,
    TResult? Function(_VerifyOTP value)? verifyOTP,
    TResult? Function(_CreateProfile value)? createProfile,
    TResult? Function(_ResendOTP value)? resendOTP,
    TResult? Function(_SignOut value)? signOut,
  }) {
    return verifyOTP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SigninWithPhoneNumber value)? signinWithPhoneNumber,
    TResult Function(_VerifyOTP value)? verifyOTP,
    TResult Function(_CreateProfile value)? createProfile,
    TResult Function(_ResendOTP value)? resendOTP,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (verifyOTP != null) {
      return verifyOTP(this);
    }
    return orElse();
  }
}

abstract class _VerifyOTP implements AuthEvent {
  const factory _VerifyOTP(final String otp) = _$VerifyOTPImpl;

  String get otp;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyOTPImplCopyWith<_$VerifyOTPImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateProfileImplCopyWith<$Res> {
  factory _$$CreateProfileImplCopyWith(
          _$CreateProfileImpl value, $Res Function(_$CreateProfileImpl) then) =
      __$$CreateProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String firstName, String? lastName, String? filePath});
}

/// @nodoc
class __$$CreateProfileImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CreateProfileImpl>
    implements _$$CreateProfileImplCopyWith<$Res> {
  __$$CreateProfileImplCopyWithImpl(
      _$CreateProfileImpl _value, $Res Function(_$CreateProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = freezed,
    Object? filePath = freezed,
  }) {
    return _then(_$CreateProfileImpl(
      null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CreateProfileImpl implements _CreateProfile {
  const _$CreateProfileImpl(this.firstName, this.lastName, this.filePath);

  @override
  final String firstName;
  @override
  final String? lastName;
  @override
  final String? filePath;

  @override
  String toString() {
    return 'AuthEvent.createProfile(firstName: $firstName, lastName: $lastName, filePath: $filePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateProfileImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, filePath);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateProfileImplCopyWith<_$CreateProfileImpl> get copyWith =>
      __$$CreateProfileImplCopyWithImpl<_$CreateProfileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String phoneNumber) signinWithPhoneNumber,
    required TResult Function(String otp) verifyOTP,
    required TResult Function(
            String firstName, String? lastName, String? filePath)
        createProfile,
    required TResult Function() resendOTP,
    required TResult Function() signOut,
  }) {
    return createProfile(firstName, lastName, filePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String phoneNumber)? signinWithPhoneNumber,
    TResult? Function(String otp)? verifyOTP,
    TResult? Function(String firstName, String? lastName, String? filePath)?
        createProfile,
    TResult? Function()? resendOTP,
    TResult? Function()? signOut,
  }) {
    return createProfile?.call(firstName, lastName, filePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String phoneNumber)? signinWithPhoneNumber,
    TResult Function(String otp)? verifyOTP,
    TResult Function(String firstName, String? lastName, String? filePath)?
        createProfile,
    TResult Function()? resendOTP,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (createProfile != null) {
      return createProfile(firstName, lastName, filePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SigninWithPhoneNumber value)
        signinWithPhoneNumber,
    required TResult Function(_VerifyOTP value) verifyOTP,
    required TResult Function(_CreateProfile value) createProfile,
    required TResult Function(_ResendOTP value) resendOTP,
    required TResult Function(_SignOut value) signOut,
  }) {
    return createProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SigninWithPhoneNumber value)? signinWithPhoneNumber,
    TResult? Function(_VerifyOTP value)? verifyOTP,
    TResult? Function(_CreateProfile value)? createProfile,
    TResult? Function(_ResendOTP value)? resendOTP,
    TResult? Function(_SignOut value)? signOut,
  }) {
    return createProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SigninWithPhoneNumber value)? signinWithPhoneNumber,
    TResult Function(_VerifyOTP value)? verifyOTP,
    TResult Function(_CreateProfile value)? createProfile,
    TResult Function(_ResendOTP value)? resendOTP,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (createProfile != null) {
      return createProfile(this);
    }
    return orElse();
  }
}

abstract class _CreateProfile implements AuthEvent {
  const factory _CreateProfile(final String firstName, final String? lastName,
      final String? filePath) = _$CreateProfileImpl;

  String get firstName;
  String? get lastName;
  String? get filePath;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateProfileImplCopyWith<_$CreateProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResendOTPImplCopyWith<$Res> {
  factory _$$ResendOTPImplCopyWith(
          _$ResendOTPImpl value, $Res Function(_$ResendOTPImpl) then) =
      __$$ResendOTPImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResendOTPImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ResendOTPImpl>
    implements _$$ResendOTPImplCopyWith<$Res> {
  __$$ResendOTPImplCopyWithImpl(
      _$ResendOTPImpl _value, $Res Function(_$ResendOTPImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResendOTPImpl implements _ResendOTP {
  const _$ResendOTPImpl();

  @override
  String toString() {
    return 'AuthEvent.resendOTP()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResendOTPImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String phoneNumber) signinWithPhoneNumber,
    required TResult Function(String otp) verifyOTP,
    required TResult Function(
            String firstName, String? lastName, String? filePath)
        createProfile,
    required TResult Function() resendOTP,
    required TResult Function() signOut,
  }) {
    return resendOTP();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String phoneNumber)? signinWithPhoneNumber,
    TResult? Function(String otp)? verifyOTP,
    TResult? Function(String firstName, String? lastName, String? filePath)?
        createProfile,
    TResult? Function()? resendOTP,
    TResult? Function()? signOut,
  }) {
    return resendOTP?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String phoneNumber)? signinWithPhoneNumber,
    TResult Function(String otp)? verifyOTP,
    TResult Function(String firstName, String? lastName, String? filePath)?
        createProfile,
    TResult Function()? resendOTP,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (resendOTP != null) {
      return resendOTP();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SigninWithPhoneNumber value)
        signinWithPhoneNumber,
    required TResult Function(_VerifyOTP value) verifyOTP,
    required TResult Function(_CreateProfile value) createProfile,
    required TResult Function(_ResendOTP value) resendOTP,
    required TResult Function(_SignOut value) signOut,
  }) {
    return resendOTP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SigninWithPhoneNumber value)? signinWithPhoneNumber,
    TResult? Function(_VerifyOTP value)? verifyOTP,
    TResult? Function(_CreateProfile value)? createProfile,
    TResult? Function(_ResendOTP value)? resendOTP,
    TResult? Function(_SignOut value)? signOut,
  }) {
    return resendOTP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SigninWithPhoneNumber value)? signinWithPhoneNumber,
    TResult Function(_VerifyOTP value)? verifyOTP,
    TResult Function(_CreateProfile value)? createProfile,
    TResult Function(_ResendOTP value)? resendOTP,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (resendOTP != null) {
      return resendOTP(this);
    }
    return orElse();
  }
}

abstract class _ResendOTP implements AuthEvent {
  const factory _ResendOTP() = _$ResendOTPImpl;
}

/// @nodoc
abstract class _$$SignOutImplCopyWith<$Res> {
  factory _$$SignOutImplCopyWith(
          _$SignOutImpl value, $Res Function(_$SignOutImpl) then) =
      __$$SignOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignOutImpl>
    implements _$$SignOutImplCopyWith<$Res> {
  __$$SignOutImplCopyWithImpl(
      _$SignOutImpl _value, $Res Function(_$SignOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignOutImpl implements _SignOut {
  const _$SignOutImpl();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String phoneNumber) signinWithPhoneNumber,
    required TResult Function(String otp) verifyOTP,
    required TResult Function(
            String firstName, String? lastName, String? filePath)
        createProfile,
    required TResult Function() resendOTP,
    required TResult Function() signOut,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String phoneNumber)? signinWithPhoneNumber,
    TResult? Function(String otp)? verifyOTP,
    TResult? Function(String firstName, String? lastName, String? filePath)?
        createProfile,
    TResult? Function()? resendOTP,
    TResult? Function()? signOut,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String phoneNumber)? signinWithPhoneNumber,
    TResult Function(String otp)? verifyOTP,
    TResult Function(String firstName, String? lastName, String? filePath)?
        createProfile,
    TResult Function()? resendOTP,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SigninWithPhoneNumber value)
        signinWithPhoneNumber,
    required TResult Function(_VerifyOTP value) verifyOTP,
    required TResult Function(_CreateProfile value) createProfile,
    required TResult Function(_ResendOTP value) resendOTP,
    required TResult Function(_SignOut value) signOut,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SigninWithPhoneNumber value)? signinWithPhoneNumber,
    TResult? Function(_VerifyOTP value)? verifyOTP,
    TResult? Function(_CreateProfile value)? createProfile,
    TResult? Function(_ResendOTP value)? resendOTP,
    TResult? Function(_SignOut value)? signOut,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SigninWithPhoneNumber value)? signinWithPhoneNumber,
    TResult Function(_VerifyOTP value)? verifyOTP,
    TResult Function(_CreateProfile value)? createProfile,
    TResult Function(_ResendOTP value)? resendOTP,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOut implements AuthEvent {
  const factory _SignOut() = _$SignOutImpl;
}

/// @nodoc
mixin _$AuthState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool get phoneNumberSuccess => throw _privateConstructorUsedError;
  String? get verificationId => throw _privateConstructorUsedError;
  bool get optSuccess => throw _privateConstructorUsedError;
  bool get profileSuccess => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isLoading,
            String? errorMessage,
            bool phoneNumberSuccess,
            String? verificationId,
            bool optSuccess,
            bool profileSuccess)
        status,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isLoading,
            String? errorMessage,
            bool phoneNumberSuccess,
            String? verificationId,
            bool optSuccess,
            bool profileSuccess)?
        status,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isLoading,
            String? errorMessage,
            bool phoneNumberSuccess,
            String? verificationId,
            bool optSuccess,
            bool profileSuccess)?
        status,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStatus value) status,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStatus value)? status,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStatus value)? status,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool isLoading,
      String? errorMessage,
      bool phoneNumberSuccess,
      String? verificationId,
      bool optSuccess,
      bool profileSuccess});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = freezed,
    Object? phoneNumberSuccess = null,
    Object? verificationId = freezed,
    Object? optSuccess = null,
    Object? profileSuccess = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumberSuccess: null == phoneNumberSuccess
          ? _value.phoneNumberSuccess
          : phoneNumberSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      verificationId: freezed == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String?,
      optSuccess: null == optSuccess
          ? _value.optSuccess
          : optSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      profileSuccess: null == profileSuccess
          ? _value.profileSuccess
          : profileSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStatusImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStatusImplCopyWith(
          _$AuthStatusImpl value, $Res Function(_$AuthStatusImpl) then) =
      __$$AuthStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String? errorMessage,
      bool phoneNumberSuccess,
      String? verificationId,
      bool optSuccess,
      bool profileSuccess});
}

/// @nodoc
class __$$AuthStatusImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStatusImpl>
    implements _$$AuthStatusImplCopyWith<$Res> {
  __$$AuthStatusImplCopyWithImpl(
      _$AuthStatusImpl _value, $Res Function(_$AuthStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = freezed,
    Object? phoneNumberSuccess = null,
    Object? verificationId = freezed,
    Object? optSuccess = null,
    Object? profileSuccess = null,
  }) {
    return _then(_$AuthStatusImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumberSuccess: null == phoneNumberSuccess
          ? _value.phoneNumberSuccess
          : phoneNumberSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      verificationId: freezed == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String?,
      optSuccess: null == optSuccess
          ? _value.optSuccess
          : optSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      profileSuccess: null == profileSuccess
          ? _value.profileSuccess
          : profileSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AuthStatusImpl implements _AuthStatus {
  const _$AuthStatusImpl(
      {this.isLoading = false,
      this.errorMessage,
      this.phoneNumberSuccess = false,
      this.verificationId = null,
      this.optSuccess = false,
      this.profileSuccess = false});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final bool phoneNumberSuccess;
  @override
  @JsonKey()
  final String? verificationId;
  @override
  @JsonKey()
  final bool optSuccess;
  @override
  @JsonKey()
  final bool profileSuccess;

  @override
  String toString() {
    return 'AuthState.status(isLoading: $isLoading, errorMessage: $errorMessage, phoneNumberSuccess: $phoneNumberSuccess, verificationId: $verificationId, optSuccess: $optSuccess, profileSuccess: $profileSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStatusImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.phoneNumberSuccess, phoneNumberSuccess) ||
                other.phoneNumberSuccess == phoneNumberSuccess) &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId) &&
            (identical(other.optSuccess, optSuccess) ||
                other.optSuccess == optSuccess) &&
            (identical(other.profileSuccess, profileSuccess) ||
                other.profileSuccess == profileSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, errorMessage,
      phoneNumberSuccess, verificationId, optSuccess, profileSuccess);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStatusImplCopyWith<_$AuthStatusImpl> get copyWith =>
      __$$AuthStatusImplCopyWithImpl<_$AuthStatusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isLoading,
            String? errorMessage,
            bool phoneNumberSuccess,
            String? verificationId,
            bool optSuccess,
            bool profileSuccess)
        status,
  }) {
    return status(isLoading, errorMessage, phoneNumberSuccess, verificationId,
        optSuccess, profileSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isLoading,
            String? errorMessage,
            bool phoneNumberSuccess,
            String? verificationId,
            bool optSuccess,
            bool profileSuccess)?
        status,
  }) {
    return status?.call(isLoading, errorMessage, phoneNumberSuccess,
        verificationId, optSuccess, profileSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isLoading,
            String? errorMessage,
            bool phoneNumberSuccess,
            String? verificationId,
            bool optSuccess,
            bool profileSuccess)?
        status,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(isLoading, errorMessage, phoneNumberSuccess, verificationId,
          optSuccess, profileSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStatus value) status,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStatus value)? status,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStatus value)? status,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class _AuthStatus implements AuthState {
  const factory _AuthStatus(
      {final bool isLoading,
      final String? errorMessage,
      final bool phoneNumberSuccess,
      final String? verificationId,
      final bool optSuccess,
      final bool profileSuccess}) = _$AuthStatusImpl;

  @override
  bool get isLoading;
  @override
  String? get errorMessage;
  @override
  bool get phoneNumberSuccess;
  @override
  String? get verificationId;
  @override
  bool get optSuccess;
  @override
  bool get profileSuccess;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStatusImplCopyWith<_$AuthStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
