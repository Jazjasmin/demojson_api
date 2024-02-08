// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'productblocmodel_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductblocmodelEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String searchQuery) searchProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(String searchQuery)? searchProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String searchQuery)? searchProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(SearchProduct value) searchProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(SearchProduct value)? searchProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(SearchProduct value)? searchProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductblocmodelEventCopyWith<$Res> {
  factory $ProductblocmodelEventCopyWith(ProductblocmodelEvent value,
          $Res Function(ProductblocmodelEvent) then) =
      _$ProductblocmodelEventCopyWithImpl<$Res, ProductblocmodelEvent>;
}

/// @nodoc
class _$ProductblocmodelEventCopyWithImpl<$Res,
        $Val extends ProductblocmodelEvent>
    implements $ProductblocmodelEventCopyWith<$Res> {
  _$ProductblocmodelEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializeImplCopyWith<$Res> {
  factory _$$InitializeImplCopyWith(
          _$InitializeImpl value, $Res Function(_$InitializeImpl) then) =
      __$$InitializeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeImplCopyWithImpl<$Res>
    extends _$ProductblocmodelEventCopyWithImpl<$Res, _$InitializeImpl>
    implements _$$InitializeImplCopyWith<$Res> {
  __$$InitializeImplCopyWithImpl(
      _$InitializeImpl _value, $Res Function(_$InitializeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitializeImpl implements Initialize {
  const _$InitializeImpl();

  @override
  String toString() {
    return 'ProductblocmodelEvent.initialize()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String searchQuery) searchProduct,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(String searchQuery)? searchProduct,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String searchQuery)? searchProduct,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(SearchProduct value) searchProduct,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(SearchProduct value)? searchProduct,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(SearchProduct value)? searchProduct,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements ProductblocmodelEvent {
  const factory Initialize() = _$InitializeImpl;
}

/// @nodoc
abstract class _$$SearchProductImplCopyWith<$Res> {
  factory _$$SearchProductImplCopyWith(
          _$SearchProductImpl value, $Res Function(_$SearchProductImpl) then) =
      __$$SearchProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchQuery});
}

/// @nodoc
class __$$SearchProductImplCopyWithImpl<$Res>
    extends _$ProductblocmodelEventCopyWithImpl<$Res, _$SearchProductImpl>
    implements _$$SearchProductImplCopyWith<$Res> {
  __$$SearchProductImplCopyWithImpl(
      _$SearchProductImpl _value, $Res Function(_$SearchProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchQuery = null,
  }) {
    return _then(_$SearchProductImpl(
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchProductImpl implements SearchProduct {
  const _$SearchProductImpl({required this.searchQuery});

  @override
  final String searchQuery;

  @override
  String toString() {
    return 'ProductblocmodelEvent.searchProduct(searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchProductImpl &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchProductImplCopyWith<_$SearchProductImpl> get copyWith =>
      __$$SearchProductImplCopyWithImpl<_$SearchProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String searchQuery) searchProduct,
  }) {
    return searchProduct(searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(String searchQuery)? searchProduct,
  }) {
    return searchProduct?.call(searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String searchQuery)? searchProduct,
    required TResult orElse(),
  }) {
    if (searchProduct != null) {
      return searchProduct(searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(SearchProduct value) searchProduct,
  }) {
    return searchProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(SearchProduct value)? searchProduct,
  }) {
    return searchProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(SearchProduct value)? searchProduct,
    required TResult orElse(),
  }) {
    if (searchProduct != null) {
      return searchProduct(this);
    }
    return orElse();
  }
}

abstract class SearchProduct implements ProductblocmodelEvent {
  const factory SearchProduct({required final String searchQuery}) =
      _$SearchProductImpl;

  String get searchQuery;
  @JsonKey(ignore: true)
  _$$SearchProductImplCopyWith<_$SearchProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductblocmodelState {
  List<Product> get idleList => throw _privateConstructorUsedError;
  List<Product> get searchResultList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductblocmodelStateCopyWith<ProductblocmodelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductblocmodelStateCopyWith<$Res> {
  factory $ProductblocmodelStateCopyWith(ProductblocmodelState value,
          $Res Function(ProductblocmodelState) then) =
      _$ProductblocmodelStateCopyWithImpl<$Res, ProductblocmodelState>;
  @useResult
  $Res call(
      {List<Product> idleList,
      List<Product> searchResultList,
      bool isLoading,
      bool isError});
}

/// @nodoc
class _$ProductblocmodelStateCopyWithImpl<$Res,
        $Val extends ProductblocmodelState>
    implements $ProductblocmodelStateCopyWith<$Res> {
  _$ProductblocmodelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idleList = null,
    Object? searchResultList = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      idleList: null == idleList
          ? _value.idleList
          : idleList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      searchResultList: null == searchResultList
          ? _value.searchResultList
          : searchResultList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductblocmodelStateImplCopyWith<$Res>
    implements $ProductblocmodelStateCopyWith<$Res> {
  factory _$$ProductblocmodelStateImplCopyWith(
          _$ProductblocmodelStateImpl value,
          $Res Function(_$ProductblocmodelStateImpl) then) =
      __$$ProductblocmodelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Product> idleList,
      List<Product> searchResultList,
      bool isLoading,
      bool isError});
}

/// @nodoc
class __$$ProductblocmodelStateImplCopyWithImpl<$Res>
    extends _$ProductblocmodelStateCopyWithImpl<$Res,
        _$ProductblocmodelStateImpl>
    implements _$$ProductblocmodelStateImplCopyWith<$Res> {
  __$$ProductblocmodelStateImplCopyWithImpl(_$ProductblocmodelStateImpl _value,
      $Res Function(_$ProductblocmodelStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idleList = null,
    Object? searchResultList = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_$ProductblocmodelStateImpl(
      idleList: null == idleList
          ? _value._idleList
          : idleList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      searchResultList: null == searchResultList
          ? _value._searchResultList
          : searchResultList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ProductblocmodelStateImpl implements _ProductblocmodelState {
  const _$ProductblocmodelStateImpl(
      {required final List<Product> idleList,
      required final List<Product> searchResultList,
      required this.isLoading,
      required this.isError})
      : _idleList = idleList,
        _searchResultList = searchResultList;

  final List<Product> _idleList;
  @override
  List<Product> get idleList {
    if (_idleList is EqualUnmodifiableListView) return _idleList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_idleList);
  }

  final List<Product> _searchResultList;
  @override
  List<Product> get searchResultList {
    if (_searchResultList is EqualUnmodifiableListView)
      return _searchResultList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResultList);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'ProductblocmodelState(idleList: $idleList, searchResultList: $searchResultList, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductblocmodelStateImpl &&
            const DeepCollectionEquality().equals(other._idleList, _idleList) &&
            const DeepCollectionEquality()
                .equals(other._searchResultList, _searchResultList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_idleList),
      const DeepCollectionEquality().hash(_searchResultList),
      isLoading,
      isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductblocmodelStateImplCopyWith<_$ProductblocmodelStateImpl>
      get copyWith => __$$ProductblocmodelStateImplCopyWithImpl<
          _$ProductblocmodelStateImpl>(this, _$identity);
}

abstract class _ProductblocmodelState implements ProductblocmodelState {
  const factory _ProductblocmodelState(
      {required final List<Product> idleList,
      required final List<Product> searchResultList,
      required final bool isLoading,
      required final bool isError}) = _$ProductblocmodelStateImpl;

  @override
  List<Product> get idleList;
  @override
  List<Product> get searchResultList;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$ProductblocmodelStateImplCopyWith<_$ProductblocmodelStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
