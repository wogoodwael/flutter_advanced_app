// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<SpecializationsData?> specializationsResponseModel,
    )
    success,
    required TResult Function(ErrorHandler errorhandler) error,
    required TResult Function(List<Doctors?> doctorsList) doctorsSuccess,
    required TResult Function(ErrorHandler errorhandler) doctorsError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SpecializationsData?> specializationsResponseModel)?
    success,
    TResult? Function(ErrorHandler errorhandler)? error,
    TResult? Function(List<Doctors?> doctorsList)? doctorsSuccess,
    TResult? Function(ErrorHandler errorhandler)? doctorsError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SpecializationsData?> specializationsResponseModel)?
    success,
    TResult Function(ErrorHandler errorhandler)? error,
    TResult Function(List<Doctors?> doctorsList)? doctorsSuccess,
    TResult Function(ErrorHandler errorhandler)? doctorsError,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SpecializationsLoading value) loading,
    required TResult Function(SpecializationsSuccess value) success,
    required TResult Function(SpecializationsError value) error,
    required TResult Function(DoctorsSuccess value) doctorsSuccess,
    required TResult Function(DoctorsError value) doctorsError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SpecializationsLoading value)? loading,
    TResult? Function(SpecializationsSuccess value)? success,
    TResult? Function(SpecializationsError value)? error,
    TResult? Function(DoctorsSuccess value)? doctorsSuccess,
    TResult? Function(DoctorsError value)? doctorsError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SpecializationsLoading value)? loading,
    TResult Function(SpecializationsSuccess value)? success,
    TResult Function(SpecializationsError value)? error,
    TResult Function(DoctorsSuccess value)? doctorsSuccess,
    TResult Function(DoctorsError value)? doctorsError,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<SpecializationsData?> specializationsResponseModel,
    )
    success,
    required TResult Function(ErrorHandler errorhandler) error,
    required TResult Function(List<Doctors?> doctorsList) doctorsSuccess,
    required TResult Function(ErrorHandler errorhandler) doctorsError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SpecializationsData?> specializationsResponseModel)?
    success,
    TResult? Function(ErrorHandler errorhandler)? error,
    TResult? Function(List<Doctors?> doctorsList)? doctorsSuccess,
    TResult? Function(ErrorHandler errorhandler)? doctorsError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SpecializationsData?> specializationsResponseModel)?
    success,
    TResult Function(ErrorHandler errorhandler)? error,
    TResult Function(List<Doctors?> doctorsList)? doctorsSuccess,
    TResult Function(ErrorHandler errorhandler)? doctorsError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SpecializationsLoading value) loading,
    required TResult Function(SpecializationsSuccess value) success,
    required TResult Function(SpecializationsError value) error,
    required TResult Function(DoctorsSuccess value) doctorsSuccess,
    required TResult Function(DoctorsError value) doctorsError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SpecializationsLoading value)? loading,
    TResult? Function(SpecializationsSuccess value)? success,
    TResult? Function(SpecializationsError value)? error,
    TResult? Function(DoctorsSuccess value)? doctorsSuccess,
    TResult? Function(DoctorsError value)? doctorsError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SpecializationsLoading value)? loading,
    TResult Function(SpecializationsSuccess value)? success,
    TResult Function(SpecializationsError value)? error,
    TResult Function(DoctorsSuccess value)? doctorsSuccess,
    TResult Function(DoctorsError value)? doctorsError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SpecializationsLoadingImplCopyWith<$Res> {
  factory _$$SpecializationsLoadingImplCopyWith(
    _$SpecializationsLoadingImpl value,
    $Res Function(_$SpecializationsLoadingImpl) then,
  ) = __$$SpecializationsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SpecializationsLoadingImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$SpecializationsLoadingImpl>
    implements _$$SpecializationsLoadingImplCopyWith<$Res> {
  __$$SpecializationsLoadingImplCopyWithImpl(
    _$SpecializationsLoadingImpl _value,
    $Res Function(_$SpecializationsLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SpecializationsLoadingImpl implements SpecializationsLoading {
  const _$SpecializationsLoadingImpl();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecializationsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<SpecializationsData?> specializationsResponseModel,
    )
    success,
    required TResult Function(ErrorHandler errorhandler) error,
    required TResult Function(List<Doctors?> doctorsList) doctorsSuccess,
    required TResult Function(ErrorHandler errorhandler) doctorsError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SpecializationsData?> specializationsResponseModel)?
    success,
    TResult? Function(ErrorHandler errorhandler)? error,
    TResult? Function(List<Doctors?> doctorsList)? doctorsSuccess,
    TResult? Function(ErrorHandler errorhandler)? doctorsError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SpecializationsData?> specializationsResponseModel)?
    success,
    TResult Function(ErrorHandler errorhandler)? error,
    TResult Function(List<Doctors?> doctorsList)? doctorsSuccess,
    TResult Function(ErrorHandler errorhandler)? doctorsError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SpecializationsLoading value) loading,
    required TResult Function(SpecializationsSuccess value) success,
    required TResult Function(SpecializationsError value) error,
    required TResult Function(DoctorsSuccess value) doctorsSuccess,
    required TResult Function(DoctorsError value) doctorsError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SpecializationsLoading value)? loading,
    TResult? Function(SpecializationsSuccess value)? success,
    TResult? Function(SpecializationsError value)? error,
    TResult? Function(DoctorsSuccess value)? doctorsSuccess,
    TResult? Function(DoctorsError value)? doctorsError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SpecializationsLoading value)? loading,
    TResult Function(SpecializationsSuccess value)? success,
    TResult Function(SpecializationsError value)? error,
    TResult Function(DoctorsSuccess value)? doctorsSuccess,
    TResult Function(DoctorsError value)? doctorsError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SpecializationsLoading implements HomeState {
  const factory SpecializationsLoading() = _$SpecializationsLoadingImpl;
}

/// @nodoc
abstract class _$$SpecializationsSuccessImplCopyWith<$Res> {
  factory _$$SpecializationsSuccessImplCopyWith(
    _$SpecializationsSuccessImpl value,
    $Res Function(_$SpecializationsSuccessImpl) then,
  ) = __$$SpecializationsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SpecializationsData?> specializationsResponseModel});
}

/// @nodoc
class __$$SpecializationsSuccessImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$SpecializationsSuccessImpl>
    implements _$$SpecializationsSuccessImplCopyWith<$Res> {
  __$$SpecializationsSuccessImplCopyWithImpl(
    _$SpecializationsSuccessImpl _value,
    $Res Function(_$SpecializationsSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? specializationsResponseModel = null}) {
    return _then(
      _$SpecializationsSuccessImpl(
        null == specializationsResponseModel
            ? _value._specializationsResponseModel
            : specializationsResponseModel // ignore: cast_nullable_to_non_nullable
                as List<SpecializationsData?>,
      ),
    );
  }
}

/// @nodoc

class _$SpecializationsSuccessImpl implements SpecializationsSuccess {
  const _$SpecializationsSuccessImpl(
    final List<SpecializationsData?> specializationsResponseModel,
  ) : _specializationsResponseModel = specializationsResponseModel;

  final List<SpecializationsData?> _specializationsResponseModel;
  @override
  List<SpecializationsData?> get specializationsResponseModel {
    if (_specializationsResponseModel is EqualUnmodifiableListView)
      return _specializationsResponseModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_specializationsResponseModel);
  }

  @override
  String toString() {
    return 'HomeState.success(specializationsResponseModel: $specializationsResponseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecializationsSuccessImpl &&
            const DeepCollectionEquality().equals(
              other._specializationsResponseModel,
              _specializationsResponseModel,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_specializationsResponseModel),
  );

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecializationsSuccessImplCopyWith<_$SpecializationsSuccessImpl>
  get copyWith =>
      __$$SpecializationsSuccessImplCopyWithImpl<_$SpecializationsSuccessImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<SpecializationsData?> specializationsResponseModel,
    )
    success,
    required TResult Function(ErrorHandler errorhandler) error,
    required TResult Function(List<Doctors?> doctorsList) doctorsSuccess,
    required TResult Function(ErrorHandler errorhandler) doctorsError,
  }) {
    return success(specializationsResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SpecializationsData?> specializationsResponseModel)?
    success,
    TResult? Function(ErrorHandler errorhandler)? error,
    TResult? Function(List<Doctors?> doctorsList)? doctorsSuccess,
    TResult? Function(ErrorHandler errorhandler)? doctorsError,
  }) {
    return success?.call(specializationsResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SpecializationsData?> specializationsResponseModel)?
    success,
    TResult Function(ErrorHandler errorhandler)? error,
    TResult Function(List<Doctors?> doctorsList)? doctorsSuccess,
    TResult Function(ErrorHandler errorhandler)? doctorsError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(specializationsResponseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SpecializationsLoading value) loading,
    required TResult Function(SpecializationsSuccess value) success,
    required TResult Function(SpecializationsError value) error,
    required TResult Function(DoctorsSuccess value) doctorsSuccess,
    required TResult Function(DoctorsError value) doctorsError,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SpecializationsLoading value)? loading,
    TResult? Function(SpecializationsSuccess value)? success,
    TResult? Function(SpecializationsError value)? error,
    TResult? Function(DoctorsSuccess value)? doctorsSuccess,
    TResult? Function(DoctorsError value)? doctorsError,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SpecializationsLoading value)? loading,
    TResult Function(SpecializationsSuccess value)? success,
    TResult Function(SpecializationsError value)? error,
    TResult Function(DoctorsSuccess value)? doctorsSuccess,
    TResult Function(DoctorsError value)? doctorsError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SpecializationsSuccess implements HomeState {
  const factory SpecializationsSuccess(
    final List<SpecializationsData?> specializationsResponseModel,
  ) = _$SpecializationsSuccessImpl;

  List<SpecializationsData?> get specializationsResponseModel;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpecializationsSuccessImplCopyWith<_$SpecializationsSuccessImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpecializationsErrorImplCopyWith<$Res> {
  factory _$$SpecializationsErrorImplCopyWith(
    _$SpecializationsErrorImpl value,
    $Res Function(_$SpecializationsErrorImpl) then,
  ) = __$$SpecializationsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorHandler errorhandler});
}

/// @nodoc
class __$$SpecializationsErrorImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$SpecializationsErrorImpl>
    implements _$$SpecializationsErrorImplCopyWith<$Res> {
  __$$SpecializationsErrorImplCopyWithImpl(
    _$SpecializationsErrorImpl _value,
    $Res Function(_$SpecializationsErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? errorhandler = null}) {
    return _then(
      _$SpecializationsErrorImpl(
        null == errorhandler
            ? _value.errorhandler
            : errorhandler // ignore: cast_nullable_to_non_nullable
                as ErrorHandler,
      ),
    );
  }
}

/// @nodoc

class _$SpecializationsErrorImpl implements SpecializationsError {
  const _$SpecializationsErrorImpl(this.errorhandler);

  @override
  final ErrorHandler errorhandler;

  @override
  String toString() {
    return 'HomeState.error(errorhandler: $errorhandler)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecializationsErrorImpl &&
            (identical(other.errorhandler, errorhandler) ||
                other.errorhandler == errorhandler));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorhandler);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecializationsErrorImplCopyWith<_$SpecializationsErrorImpl>
  get copyWith =>
      __$$SpecializationsErrorImplCopyWithImpl<_$SpecializationsErrorImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<SpecializationsData?> specializationsResponseModel,
    )
    success,
    required TResult Function(ErrorHandler errorhandler) error,
    required TResult Function(List<Doctors?> doctorsList) doctorsSuccess,
    required TResult Function(ErrorHandler errorhandler) doctorsError,
  }) {
    return error(errorhandler);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SpecializationsData?> specializationsResponseModel)?
    success,
    TResult? Function(ErrorHandler errorhandler)? error,
    TResult? Function(List<Doctors?> doctorsList)? doctorsSuccess,
    TResult? Function(ErrorHandler errorhandler)? doctorsError,
  }) {
    return error?.call(errorhandler);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SpecializationsData?> specializationsResponseModel)?
    success,
    TResult Function(ErrorHandler errorhandler)? error,
    TResult Function(List<Doctors?> doctorsList)? doctorsSuccess,
    TResult Function(ErrorHandler errorhandler)? doctorsError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorhandler);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SpecializationsLoading value) loading,
    required TResult Function(SpecializationsSuccess value) success,
    required TResult Function(SpecializationsError value) error,
    required TResult Function(DoctorsSuccess value) doctorsSuccess,
    required TResult Function(DoctorsError value) doctorsError,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SpecializationsLoading value)? loading,
    TResult? Function(SpecializationsSuccess value)? success,
    TResult? Function(SpecializationsError value)? error,
    TResult? Function(DoctorsSuccess value)? doctorsSuccess,
    TResult? Function(DoctorsError value)? doctorsError,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SpecializationsLoading value)? loading,
    TResult Function(SpecializationsSuccess value)? success,
    TResult Function(SpecializationsError value)? error,
    TResult Function(DoctorsSuccess value)? doctorsSuccess,
    TResult Function(DoctorsError value)? doctorsError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SpecializationsError implements HomeState {
  const factory SpecializationsError(final ErrorHandler errorhandler) =
      _$SpecializationsErrorImpl;

  ErrorHandler get errorhandler;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpecializationsErrorImplCopyWith<_$SpecializationsErrorImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DoctorsSuccessImplCopyWith<$Res> {
  factory _$$DoctorsSuccessImplCopyWith(
    _$DoctorsSuccessImpl value,
    $Res Function(_$DoctorsSuccessImpl) then,
  ) = __$$DoctorsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Doctors?> doctorsList});
}

/// @nodoc
class __$$DoctorsSuccessImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$DoctorsSuccessImpl>
    implements _$$DoctorsSuccessImplCopyWith<$Res> {
  __$$DoctorsSuccessImplCopyWithImpl(
    _$DoctorsSuccessImpl _value,
    $Res Function(_$DoctorsSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? doctorsList = null}) {
    return _then(
      _$DoctorsSuccessImpl(
        null == doctorsList
            ? _value._doctorsList
            : doctorsList // ignore: cast_nullable_to_non_nullable
                as List<Doctors?>,
      ),
    );
  }
}

/// @nodoc

class _$DoctorsSuccessImpl implements DoctorsSuccess {
  const _$DoctorsSuccessImpl(final List<Doctors?> doctorsList)
    : _doctorsList = doctorsList;

  final List<Doctors?> _doctorsList;
  @override
  List<Doctors?> get doctorsList {
    if (_doctorsList is EqualUnmodifiableListView) return _doctorsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_doctorsList);
  }

  @override
  String toString() {
    return 'HomeState.doctorsSuccess(doctorsList: $doctorsList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorsSuccessImpl &&
            const DeepCollectionEquality().equals(
              other._doctorsList,
              _doctorsList,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_doctorsList),
  );

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorsSuccessImplCopyWith<_$DoctorsSuccessImpl> get copyWith =>
      __$$DoctorsSuccessImplCopyWithImpl<_$DoctorsSuccessImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<SpecializationsData?> specializationsResponseModel,
    )
    success,
    required TResult Function(ErrorHandler errorhandler) error,
    required TResult Function(List<Doctors?> doctorsList) doctorsSuccess,
    required TResult Function(ErrorHandler errorhandler) doctorsError,
  }) {
    return doctorsSuccess(doctorsList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SpecializationsData?> specializationsResponseModel)?
    success,
    TResult? Function(ErrorHandler errorhandler)? error,
    TResult? Function(List<Doctors?> doctorsList)? doctorsSuccess,
    TResult? Function(ErrorHandler errorhandler)? doctorsError,
  }) {
    return doctorsSuccess?.call(doctorsList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SpecializationsData?> specializationsResponseModel)?
    success,
    TResult Function(ErrorHandler errorhandler)? error,
    TResult Function(List<Doctors?> doctorsList)? doctorsSuccess,
    TResult Function(ErrorHandler errorhandler)? doctorsError,
    required TResult orElse(),
  }) {
    if (doctorsSuccess != null) {
      return doctorsSuccess(doctorsList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SpecializationsLoading value) loading,
    required TResult Function(SpecializationsSuccess value) success,
    required TResult Function(SpecializationsError value) error,
    required TResult Function(DoctorsSuccess value) doctorsSuccess,
    required TResult Function(DoctorsError value) doctorsError,
  }) {
    return doctorsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SpecializationsLoading value)? loading,
    TResult? Function(SpecializationsSuccess value)? success,
    TResult? Function(SpecializationsError value)? error,
    TResult? Function(DoctorsSuccess value)? doctorsSuccess,
    TResult? Function(DoctorsError value)? doctorsError,
  }) {
    return doctorsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SpecializationsLoading value)? loading,
    TResult Function(SpecializationsSuccess value)? success,
    TResult Function(SpecializationsError value)? error,
    TResult Function(DoctorsSuccess value)? doctorsSuccess,
    TResult Function(DoctorsError value)? doctorsError,
    required TResult orElse(),
  }) {
    if (doctorsSuccess != null) {
      return doctorsSuccess(this);
    }
    return orElse();
  }
}

abstract class DoctorsSuccess implements HomeState {
  const factory DoctorsSuccess(final List<Doctors?> doctorsList) =
      _$DoctorsSuccessImpl;

  List<Doctors?> get doctorsList;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorsSuccessImplCopyWith<_$DoctorsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DoctorsErrorImplCopyWith<$Res> {
  factory _$$DoctorsErrorImplCopyWith(
    _$DoctorsErrorImpl value,
    $Res Function(_$DoctorsErrorImpl) then,
  ) = __$$DoctorsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorHandler errorhandler});
}

/// @nodoc
class __$$DoctorsErrorImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$DoctorsErrorImpl>
    implements _$$DoctorsErrorImplCopyWith<$Res> {
  __$$DoctorsErrorImplCopyWithImpl(
    _$DoctorsErrorImpl _value,
    $Res Function(_$DoctorsErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? errorhandler = null}) {
    return _then(
      _$DoctorsErrorImpl(
        null == errorhandler
            ? _value.errorhandler
            : errorhandler // ignore: cast_nullable_to_non_nullable
                as ErrorHandler,
      ),
    );
  }
}

/// @nodoc

class _$DoctorsErrorImpl implements DoctorsError {
  const _$DoctorsErrorImpl(this.errorhandler);

  @override
  final ErrorHandler errorhandler;

  @override
  String toString() {
    return 'HomeState.doctorsError(errorhandler: $errorhandler)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorsErrorImpl &&
            (identical(other.errorhandler, errorhandler) ||
                other.errorhandler == errorhandler));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorhandler);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorsErrorImplCopyWith<_$DoctorsErrorImpl> get copyWith =>
      __$$DoctorsErrorImplCopyWithImpl<_$DoctorsErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<SpecializationsData?> specializationsResponseModel,
    )
    success,
    required TResult Function(ErrorHandler errorhandler) error,
    required TResult Function(List<Doctors?> doctorsList) doctorsSuccess,
    required TResult Function(ErrorHandler errorhandler) doctorsError,
  }) {
    return doctorsError(errorhandler);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SpecializationsData?> specializationsResponseModel)?
    success,
    TResult? Function(ErrorHandler errorhandler)? error,
    TResult? Function(List<Doctors?> doctorsList)? doctorsSuccess,
    TResult? Function(ErrorHandler errorhandler)? doctorsError,
  }) {
    return doctorsError?.call(errorhandler);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SpecializationsData?> specializationsResponseModel)?
    success,
    TResult Function(ErrorHandler errorhandler)? error,
    TResult Function(List<Doctors?> doctorsList)? doctorsSuccess,
    TResult Function(ErrorHandler errorhandler)? doctorsError,
    required TResult orElse(),
  }) {
    if (doctorsError != null) {
      return doctorsError(errorhandler);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SpecializationsLoading value) loading,
    required TResult Function(SpecializationsSuccess value) success,
    required TResult Function(SpecializationsError value) error,
    required TResult Function(DoctorsSuccess value) doctorsSuccess,
    required TResult Function(DoctorsError value) doctorsError,
  }) {
    return doctorsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SpecializationsLoading value)? loading,
    TResult? Function(SpecializationsSuccess value)? success,
    TResult? Function(SpecializationsError value)? error,
    TResult? Function(DoctorsSuccess value)? doctorsSuccess,
    TResult? Function(DoctorsError value)? doctorsError,
  }) {
    return doctorsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SpecializationsLoading value)? loading,
    TResult Function(SpecializationsSuccess value)? success,
    TResult Function(SpecializationsError value)? error,
    TResult Function(DoctorsSuccess value)? doctorsSuccess,
    TResult Function(DoctorsError value)? doctorsError,
    required TResult orElse(),
  }) {
    if (doctorsError != null) {
      return doctorsError(this);
    }
    return orElse();
  }
}

abstract class DoctorsError implements HomeState {
  const factory DoctorsError(final ErrorHandler errorhandler) =
      _$DoctorsErrorImpl;

  ErrorHandler get errorhandler;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorsErrorImplCopyWith<_$DoctorsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
