// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApicalResult<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data, Response<dynamic>? response) success,
    required TResult Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)
        failed,
    required TResult Function(Response<dynamic>? response) canceled,
    required TResult Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)
        serverError,
    required TResult Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)
        networkError,
    required TResult Function() internalError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data, Response<dynamic>? response)? success,
    TResult? Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)?
        failed,
    TResult? Function(Response<dynamic>? response)? canceled,
    TResult? Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)?
        serverError,
    TResult? Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)?
        networkError,
    TResult? Function()? internalError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data, Response<dynamic>? response)? success,
    TResult Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)?
        failed,
    TResult Function(Response<dynamic>? response)? canceled,
    TResult Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)?
        serverError,
    TResult Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)?
        networkError,
    TResult Function()? internalError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<T> value) success,
    required TResult Function(Failed<T> value) failed,
    required TResult Function(CancelResponse<T> value) canceled,
    required TResult Function(ServerError<T> value) serverError,
    required TResult Function(NetworkError<T> value) networkError,
    required TResult Function(InternalError<T> value) internalError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Success<T> value)? success,
    TResult? Function(Failed<T> value)? failed,
    TResult? Function(CancelResponse<T> value)? canceled,
    TResult? Function(ServerError<T> value)? serverError,
    TResult? Function(NetworkError<T> value)? networkError,
    TResult? Function(InternalError<T> value)? internalError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<T> value)? success,
    TResult Function(Failed<T> value)? failed,
    TResult Function(CancelResponse<T> value)? canceled,
    TResult Function(ServerError<T> value)? serverError,
    TResult Function(NetworkError<T> value)? networkError,
    TResult Function(InternalError<T> value)? internalError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApicalResultCopyWith<T, $Res> {
  factory $ApicalResultCopyWith(
          ApicalResult<T> value, $Res Function(ApicalResult<T>) then) =
      _$ApicalResultCopyWithImpl<T, $Res, ApicalResult<T>>;
}

/// @nodoc
class _$ApicalResultCopyWithImpl<T, $Res, $Val extends ApicalResult<T>>
    implements $ApicalResultCopyWith<T, $Res> {
  _$ApicalResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApicalResult
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<T, $Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl<T> value, $Res Function(_$SuccessImpl<T>) then) =
      __$$SuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data, Response<dynamic>? response});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<T, $Res>
    extends _$ApicalResultCopyWithImpl<T, $Res, _$SuccessImpl<T>>
    implements _$$SuccessImplCopyWith<T, $Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl<T> _value, $Res Function(_$SuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ApicalResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? response = freezed,
  }) {
    return _then(_$SuccessImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as Response<dynamic>?,
    ));
  }
}

/// @nodoc

class _$SuccessImpl<T> extends Success<T> {
  const _$SuccessImpl({required this.data, required this.response}) : super._();

  @override
  final T data;
  @override
  final Response<dynamic>? response;

  @override
  String toString() {
    return 'ApicalResult<$T>.success(data: $data, response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), response);

  /// Create a copy of ApicalResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<T, _$SuccessImpl<T>> get copyWith =>
      __$$SuccessImplCopyWithImpl<T, _$SuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data, Response<dynamic>? response) success,
    required TResult Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)
        failed,
    required TResult Function(Response<dynamic>? response) canceled,
    required TResult Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)
        serverError,
    required TResult Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)
        networkError,
    required TResult Function() internalError,
  }) {
    return success(data, response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data, Response<dynamic>? response)? success,
    TResult? Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)?
        failed,
    TResult? Function(Response<dynamic>? response)? canceled,
    TResult? Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)?
        serverError,
    TResult? Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)?
        networkError,
    TResult? Function()? internalError,
  }) {
    return success?.call(data, response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data, Response<dynamic>? response)? success,
    TResult Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)?
        failed,
    TResult Function(Response<dynamic>? response)? canceled,
    TResult Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)?
        serverError,
    TResult Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)?
        networkError,
    TResult Function()? internalError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data, response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<T> value) success,
    required TResult Function(Failed<T> value) failed,
    required TResult Function(CancelResponse<T> value) canceled,
    required TResult Function(ServerError<T> value) serverError,
    required TResult Function(NetworkError<T> value) networkError,
    required TResult Function(InternalError<T> value) internalError,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Success<T> value)? success,
    TResult? Function(Failed<T> value)? failed,
    TResult? Function(CancelResponse<T> value)? canceled,
    TResult? Function(ServerError<T> value)? serverError,
    TResult? Function(NetworkError<T> value)? networkError,
    TResult? Function(InternalError<T> value)? internalError,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<T> value)? success,
    TResult Function(Failed<T> value)? failed,
    TResult Function(CancelResponse<T> value)? canceled,
    TResult Function(ServerError<T> value)? serverError,
    TResult Function(NetworkError<T> value)? networkError,
    TResult Function(InternalError<T> value)? internalError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<T> extends ApicalResult<T> {
  const factory Success(
      {required final T data,
      required final Response<dynamic>? response}) = _$SuccessImpl<T>;
  const Success._() : super._();

  T get data;
  Response<dynamic>? get response;

  /// Create a copy of ApicalResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<T, _$SuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<T, $Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl<T> value, $Res Function(_$FailedImpl<T>) then) =
      __$$FailedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call(
      {dynamic errors, StackTrace stackTrace, Response<dynamic>? response});
}

/// @nodoc
class __$$FailedImplCopyWithImpl<T, $Res>
    extends _$ApicalResultCopyWithImpl<T, $Res, _$FailedImpl<T>>
    implements _$$FailedImplCopyWith<T, $Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl<T> _value, $Res Function(_$FailedImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ApicalResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errors = freezed,
    Object? stackTrace = null,
    Object? response = freezed,
  }) {
    return _then(_$FailedImpl<T>(
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as Response<dynamic>?,
    ));
  }
}

/// @nodoc

class _$FailedImpl<T> extends Failed<T> {
  const _$FailedImpl(
      {required this.errors, required this.stackTrace, required this.response})
      : super._();

  @override
  final dynamic errors;
  @override
  final StackTrace stackTrace;
  @override
  final Response<dynamic>? response;

  @override
  String toString() {
    return 'ApicalResult<$T>.failed(errors: $errors, stackTrace: $stackTrace, response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl<T> &&
            const DeepCollectionEquality().equals(other.errors, errors) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(errors), stackTrace, response);

  /// Create a copy of ApicalResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<T, _$FailedImpl<T>> get copyWith =>
      __$$FailedImplCopyWithImpl<T, _$FailedImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data, Response<dynamic>? response) success,
    required TResult Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)
        failed,
    required TResult Function(Response<dynamic>? response) canceled,
    required TResult Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)
        serverError,
    required TResult Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)
        networkError,
    required TResult Function() internalError,
  }) {
    return failed(errors, stackTrace, response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data, Response<dynamic>? response)? success,
    TResult? Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)?
        failed,
    TResult? Function(Response<dynamic>? response)? canceled,
    TResult? Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)?
        serverError,
    TResult? Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)?
        networkError,
    TResult? Function()? internalError,
  }) {
    return failed?.call(errors, stackTrace, response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data, Response<dynamic>? response)? success,
    TResult Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)?
        failed,
    TResult Function(Response<dynamic>? response)? canceled,
    TResult Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)?
        serverError,
    TResult Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)?
        networkError,
    TResult Function()? internalError,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(errors, stackTrace, response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<T> value) success,
    required TResult Function(Failed<T> value) failed,
    required TResult Function(CancelResponse<T> value) canceled,
    required TResult Function(ServerError<T> value) serverError,
    required TResult Function(NetworkError<T> value) networkError,
    required TResult Function(InternalError<T> value) internalError,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Success<T> value)? success,
    TResult? Function(Failed<T> value)? failed,
    TResult? Function(CancelResponse<T> value)? canceled,
    TResult? Function(ServerError<T> value)? serverError,
    TResult? Function(NetworkError<T> value)? networkError,
    TResult? Function(InternalError<T> value)? internalError,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<T> value)? success,
    TResult Function(Failed<T> value)? failed,
    TResult Function(CancelResponse<T> value)? canceled,
    TResult Function(ServerError<T> value)? serverError,
    TResult Function(NetworkError<T> value)? networkError,
    TResult Function(InternalError<T> value)? internalError,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class Failed<T> extends ApicalResult<T> {
  const factory Failed(
      {required final dynamic errors,
      required final StackTrace stackTrace,
      required final Response<dynamic>? response}) = _$FailedImpl<T>;
  const Failed._() : super._();

  dynamic get errors;
  StackTrace get stackTrace;
  Response<dynamic>? get response;

  /// Create a copy of ApicalResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedImplCopyWith<T, _$FailedImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelResponseImplCopyWith<T, $Res> {
  factory _$$CancelResponseImplCopyWith(_$CancelResponseImpl<T> value,
          $Res Function(_$CancelResponseImpl<T>) then) =
      __$$CancelResponseImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Response<dynamic>? response});
}

/// @nodoc
class __$$CancelResponseImplCopyWithImpl<T, $Res>
    extends _$ApicalResultCopyWithImpl<T, $Res, _$CancelResponseImpl<T>>
    implements _$$CancelResponseImplCopyWith<T, $Res> {
  __$$CancelResponseImplCopyWithImpl(_$CancelResponseImpl<T> _value,
      $Res Function(_$CancelResponseImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ApicalResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$CancelResponseImpl<T>(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as Response<dynamic>?,
    ));
  }
}

/// @nodoc

class _$CancelResponseImpl<T> extends CancelResponse<T> {
  const _$CancelResponseImpl({required this.response}) : super._();

  @override
  final Response<dynamic>? response;

  @override
  String toString() {
    return 'ApicalResult<$T>.canceled(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelResponseImpl<T> &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  /// Create a copy of ApicalResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelResponseImplCopyWith<T, _$CancelResponseImpl<T>> get copyWith =>
      __$$CancelResponseImplCopyWithImpl<T, _$CancelResponseImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data, Response<dynamic>? response) success,
    required TResult Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)
        failed,
    required TResult Function(Response<dynamic>? response) canceled,
    required TResult Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)
        serverError,
    required TResult Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)
        networkError,
    required TResult Function() internalError,
  }) {
    return canceled(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data, Response<dynamic>? response)? success,
    TResult? Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)?
        failed,
    TResult? Function(Response<dynamic>? response)? canceled,
    TResult? Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)?
        serverError,
    TResult? Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)?
        networkError,
    TResult? Function()? internalError,
  }) {
    return canceled?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data, Response<dynamic>? response)? success,
    TResult Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)?
        failed,
    TResult Function(Response<dynamic>? response)? canceled,
    TResult Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)?
        serverError,
    TResult Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)?
        networkError,
    TResult Function()? internalError,
    required TResult orElse(),
  }) {
    if (canceled != null) {
      return canceled(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<T> value) success,
    required TResult Function(Failed<T> value) failed,
    required TResult Function(CancelResponse<T> value) canceled,
    required TResult Function(ServerError<T> value) serverError,
    required TResult Function(NetworkError<T> value) networkError,
    required TResult Function(InternalError<T> value) internalError,
  }) {
    return canceled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Success<T> value)? success,
    TResult? Function(Failed<T> value)? failed,
    TResult? Function(CancelResponse<T> value)? canceled,
    TResult? Function(ServerError<T> value)? serverError,
    TResult? Function(NetworkError<T> value)? networkError,
    TResult? Function(InternalError<T> value)? internalError,
  }) {
    return canceled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<T> value)? success,
    TResult Function(Failed<T> value)? failed,
    TResult Function(CancelResponse<T> value)? canceled,
    TResult Function(ServerError<T> value)? serverError,
    TResult Function(NetworkError<T> value)? networkError,
    TResult Function(InternalError<T> value)? internalError,
    required TResult orElse(),
  }) {
    if (canceled != null) {
      return canceled(this);
    }
    return orElse();
  }
}

abstract class CancelResponse<T> extends ApicalResult<T> {
  const factory CancelResponse({required final Response<dynamic>? response}) =
      _$CancelResponseImpl<T>;
  const CancelResponse._() : super._();

  Response<dynamic>? get response;

  /// Create a copy of ApicalResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CancelResponseImplCopyWith<T, _$CancelResponseImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerErrorImplCopyWith<T, $Res> {
  factory _$$ServerErrorImplCopyWith(_$ServerErrorImpl<T> value,
          $Res Function(_$ServerErrorImpl<T>) then) =
      __$$ServerErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call(
      {dynamic errors, StackTrace stackTrace, Response<dynamic>? response});
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<T, $Res>
    extends _$ApicalResultCopyWithImpl<T, $Res, _$ServerErrorImpl<T>>
    implements _$$ServerErrorImplCopyWith<T, $Res> {
  __$$ServerErrorImplCopyWithImpl(
      _$ServerErrorImpl<T> _value, $Res Function(_$ServerErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ApicalResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errors = freezed,
    Object? stackTrace = null,
    Object? response = freezed,
  }) {
    return _then(_$ServerErrorImpl<T>(
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as Response<dynamic>?,
    ));
  }
}

/// @nodoc

class _$ServerErrorImpl<T> extends ServerError<T> {
  const _$ServerErrorImpl(
      {required this.errors, required this.stackTrace, required this.response})
      : super._();

  @override
  final dynamic errors;
  @override
  final StackTrace stackTrace;
  @override
  final Response<dynamic>? response;

  @override
  String toString() {
    return 'ApicalResult<$T>.serverError(errors: $errors, stackTrace: $stackTrace, response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerErrorImpl<T> &&
            const DeepCollectionEquality().equals(other.errors, errors) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(errors), stackTrace, response);

  /// Create a copy of ApicalResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerErrorImplCopyWith<T, _$ServerErrorImpl<T>> get copyWith =>
      __$$ServerErrorImplCopyWithImpl<T, _$ServerErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data, Response<dynamic>? response) success,
    required TResult Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)
        failed,
    required TResult Function(Response<dynamic>? response) canceled,
    required TResult Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)
        serverError,
    required TResult Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)
        networkError,
    required TResult Function() internalError,
  }) {
    return serverError(errors, stackTrace, response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data, Response<dynamic>? response)? success,
    TResult? Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)?
        failed,
    TResult? Function(Response<dynamic>? response)? canceled,
    TResult? Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)?
        serverError,
    TResult? Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)?
        networkError,
    TResult? Function()? internalError,
  }) {
    return serverError?.call(errors, stackTrace, response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data, Response<dynamic>? response)? success,
    TResult Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)?
        failed,
    TResult Function(Response<dynamic>? response)? canceled,
    TResult Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)?
        serverError,
    TResult Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)?
        networkError,
    TResult Function()? internalError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(errors, stackTrace, response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<T> value) success,
    required TResult Function(Failed<T> value) failed,
    required TResult Function(CancelResponse<T> value) canceled,
    required TResult Function(ServerError<T> value) serverError,
    required TResult Function(NetworkError<T> value) networkError,
    required TResult Function(InternalError<T> value) internalError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Success<T> value)? success,
    TResult? Function(Failed<T> value)? failed,
    TResult? Function(CancelResponse<T> value)? canceled,
    TResult? Function(ServerError<T> value)? serverError,
    TResult? Function(NetworkError<T> value)? networkError,
    TResult? Function(InternalError<T> value)? internalError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<T> value)? success,
    TResult Function(Failed<T> value)? failed,
    TResult Function(CancelResponse<T> value)? canceled,
    TResult Function(ServerError<T> value)? serverError,
    TResult Function(NetworkError<T> value)? networkError,
    TResult Function(InternalError<T> value)? internalError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError<T> extends ApicalResult<T> {
  const factory ServerError(
      {required final dynamic errors,
      required final StackTrace stackTrace,
      required final Response<dynamic>? response}) = _$ServerErrorImpl<T>;
  const ServerError._() : super._();

  dynamic get errors;
  StackTrace get stackTrace;
  Response<dynamic>? get response;

  /// Create a copy of ApicalResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerErrorImplCopyWith<T, _$ServerErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkErrorImplCopyWith<T, $Res> {
  factory _$$NetworkErrorImplCopyWith(_$NetworkErrorImpl<T> value,
          $Res Function(_$NetworkErrorImpl<T>) then) =
      __$$NetworkErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call(
      {dynamic errors, StackTrace stackTrace, Response<dynamic>? response});
}

/// @nodoc
class __$$NetworkErrorImplCopyWithImpl<T, $Res>
    extends _$ApicalResultCopyWithImpl<T, $Res, _$NetworkErrorImpl<T>>
    implements _$$NetworkErrorImplCopyWith<T, $Res> {
  __$$NetworkErrorImplCopyWithImpl(
      _$NetworkErrorImpl<T> _value, $Res Function(_$NetworkErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ApicalResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errors = freezed,
    Object? stackTrace = null,
    Object? response = freezed,
  }) {
    return _then(_$NetworkErrorImpl<T>(
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as Response<dynamic>?,
    ));
  }
}

/// @nodoc

class _$NetworkErrorImpl<T> extends NetworkError<T> {
  const _$NetworkErrorImpl(
      {required this.errors, required this.stackTrace, required this.response})
      : super._();

  @override
  final dynamic errors;
  @override
  final StackTrace stackTrace;
  @override
  final Response<dynamic>? response;

  @override
  String toString() {
    return 'ApicalResult<$T>.networkError(errors: $errors, stackTrace: $stackTrace, response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkErrorImpl<T> &&
            const DeepCollectionEquality().equals(other.errors, errors) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(errors), stackTrace, response);

  /// Create a copy of ApicalResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkErrorImplCopyWith<T, _$NetworkErrorImpl<T>> get copyWith =>
      __$$NetworkErrorImplCopyWithImpl<T, _$NetworkErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data, Response<dynamic>? response) success,
    required TResult Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)
        failed,
    required TResult Function(Response<dynamic>? response) canceled,
    required TResult Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)
        serverError,
    required TResult Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)
        networkError,
    required TResult Function() internalError,
  }) {
    return networkError(errors, stackTrace, response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data, Response<dynamic>? response)? success,
    TResult? Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)?
        failed,
    TResult? Function(Response<dynamic>? response)? canceled,
    TResult? Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)?
        serverError,
    TResult? Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)?
        networkError,
    TResult? Function()? internalError,
  }) {
    return networkError?.call(errors, stackTrace, response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data, Response<dynamic>? response)? success,
    TResult Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)?
        failed,
    TResult Function(Response<dynamic>? response)? canceled,
    TResult Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)?
        serverError,
    TResult Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)?
        networkError,
    TResult Function()? internalError,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(errors, stackTrace, response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<T> value) success,
    required TResult Function(Failed<T> value) failed,
    required TResult Function(CancelResponse<T> value) canceled,
    required TResult Function(ServerError<T> value) serverError,
    required TResult Function(NetworkError<T> value) networkError,
    required TResult Function(InternalError<T> value) internalError,
  }) {
    return networkError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Success<T> value)? success,
    TResult? Function(Failed<T> value)? failed,
    TResult? Function(CancelResponse<T> value)? canceled,
    TResult? Function(ServerError<T> value)? serverError,
    TResult? Function(NetworkError<T> value)? networkError,
    TResult? Function(InternalError<T> value)? internalError,
  }) {
    return networkError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<T> value)? success,
    TResult Function(Failed<T> value)? failed,
    TResult Function(CancelResponse<T> value)? canceled,
    TResult Function(ServerError<T> value)? serverError,
    TResult Function(NetworkError<T> value)? networkError,
    TResult Function(InternalError<T> value)? internalError,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(this);
    }
    return orElse();
  }
}

abstract class NetworkError<T> extends ApicalResult<T> {
  const factory NetworkError(
      {required final dynamic errors,
      required final StackTrace stackTrace,
      required final Response<dynamic>? response}) = _$NetworkErrorImpl<T>;
  const NetworkError._() : super._();

  dynamic get errors;
  StackTrace get stackTrace;
  Response<dynamic>? get response;

  /// Create a copy of ApicalResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkErrorImplCopyWith<T, _$NetworkErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InternalErrorImplCopyWith<T, $Res> {
  factory _$$InternalErrorImplCopyWith(_$InternalErrorImpl<T> value,
          $Res Function(_$InternalErrorImpl<T>) then) =
      __$$InternalErrorImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InternalErrorImplCopyWithImpl<T, $Res>
    extends _$ApicalResultCopyWithImpl<T, $Res, _$InternalErrorImpl<T>>
    implements _$$InternalErrorImplCopyWith<T, $Res> {
  __$$InternalErrorImplCopyWithImpl(_$InternalErrorImpl<T> _value,
      $Res Function(_$InternalErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ApicalResult
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InternalErrorImpl<T> extends InternalError<T> {
  const _$InternalErrorImpl() : super._();

  @override
  String toString() {
    return 'ApicalResult<$T>.internalError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InternalErrorImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data, Response<dynamic>? response) success,
    required TResult Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)
        failed,
    required TResult Function(Response<dynamic>? response) canceled,
    required TResult Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)
        serverError,
    required TResult Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)
        networkError,
    required TResult Function() internalError,
  }) {
    return internalError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data, Response<dynamic>? response)? success,
    TResult? Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)?
        failed,
    TResult? Function(Response<dynamic>? response)? canceled,
    TResult? Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)?
        serverError,
    TResult? Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)?
        networkError,
    TResult? Function()? internalError,
  }) {
    return internalError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data, Response<dynamic>? response)? success,
    TResult Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)?
        failed,
    TResult Function(Response<dynamic>? response)? canceled,
    TResult Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)?
        serverError,
    TResult Function(
            dynamic errors, StackTrace stackTrace, Response<dynamic>? response)?
        networkError,
    TResult Function()? internalError,
    required TResult orElse(),
  }) {
    if (internalError != null) {
      return internalError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<T> value) success,
    required TResult Function(Failed<T> value) failed,
    required TResult Function(CancelResponse<T> value) canceled,
    required TResult Function(ServerError<T> value) serverError,
    required TResult Function(NetworkError<T> value) networkError,
    required TResult Function(InternalError<T> value) internalError,
  }) {
    return internalError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Success<T> value)? success,
    TResult? Function(Failed<T> value)? failed,
    TResult? Function(CancelResponse<T> value)? canceled,
    TResult? Function(ServerError<T> value)? serverError,
    TResult? Function(NetworkError<T> value)? networkError,
    TResult? Function(InternalError<T> value)? internalError,
  }) {
    return internalError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<T> value)? success,
    TResult Function(Failed<T> value)? failed,
    TResult Function(CancelResponse<T> value)? canceled,
    TResult Function(ServerError<T> value)? serverError,
    TResult Function(NetworkError<T> value)? networkError,
    TResult Function(InternalError<T> value)? internalError,
    required TResult orElse(),
  }) {
    if (internalError != null) {
      return internalError(this);
    }
    return orElse();
  }
}

abstract class InternalError<T> extends ApicalResult<T> {
  const factory InternalError() = _$InternalErrorImpl<T>;
  const InternalError._() : super._();
}
