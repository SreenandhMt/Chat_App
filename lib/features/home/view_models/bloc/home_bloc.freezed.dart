// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllData,
    required TResult Function(String category) filterCategoryUsers,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        loadUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllData,
    TResult? Function(String category)? filterCategoryUsers,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllData,
    TResult Function(String category)? filterCategoryUsers,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadUserData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_getAllData value) getAllData,
    required TResult Function(_FilterCategoryUsers value) filterCategoryUsers,
    required TResult Function(_LoadUserData value) loadUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_getAllData value)? getAllData,
    TResult? Function(_FilterCategoryUsers value)? filterCategoryUsers,
    TResult? Function(_LoadUserData value)? loadUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_getAllData value)? getAllData,
    TResult Function(_FilterCategoryUsers value)? filterCategoryUsers,
    TResult Function(_LoadUserData value)? loadUserData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
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
    extends _$HomeEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'HomeEvent.started()';
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
    required TResult Function() getAllData,
    required TResult Function(String category) filterCategoryUsers,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        loadUserData,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllData,
    TResult? Function(String category)? filterCategoryUsers,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadUserData,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllData,
    TResult Function(String category)? filterCategoryUsers,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadUserData,
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
    required TResult Function(_getAllData value) getAllData,
    required TResult Function(_FilterCategoryUsers value) filterCategoryUsers,
    required TResult Function(_LoadUserData value) loadUserData,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_getAllData value)? getAllData,
    TResult? Function(_FilterCategoryUsers value)? filterCategoryUsers,
    TResult? Function(_LoadUserData value)? loadUserData,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_getAllData value)? getAllData,
    TResult Function(_FilterCategoryUsers value)? filterCategoryUsers,
    TResult Function(_LoadUserData value)? loadUserData,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomeEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$getAllDataImplCopyWith<$Res> {
  factory _$$getAllDataImplCopyWith(
          _$getAllDataImpl value, $Res Function(_$getAllDataImpl) then) =
      __$$getAllDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$getAllDataImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$getAllDataImpl>
    implements _$$getAllDataImplCopyWith<$Res> {
  __$$getAllDataImplCopyWithImpl(
      _$getAllDataImpl _value, $Res Function(_$getAllDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$getAllDataImpl implements _getAllData {
  const _$getAllDataImpl();

  @override
  String toString() {
    return 'HomeEvent.getAllData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$getAllDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllData,
    required TResult Function(String category) filterCategoryUsers,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        loadUserData,
  }) {
    return getAllData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllData,
    TResult? Function(String category)? filterCategoryUsers,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadUserData,
  }) {
    return getAllData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllData,
    TResult Function(String category)? filterCategoryUsers,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadUserData,
    required TResult orElse(),
  }) {
    if (getAllData != null) {
      return getAllData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_getAllData value) getAllData,
    required TResult Function(_FilterCategoryUsers value) filterCategoryUsers,
    required TResult Function(_LoadUserData value) loadUserData,
  }) {
    return getAllData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_getAllData value)? getAllData,
    TResult? Function(_FilterCategoryUsers value)? filterCategoryUsers,
    TResult? Function(_LoadUserData value)? loadUserData,
  }) {
    return getAllData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_getAllData value)? getAllData,
    TResult Function(_FilterCategoryUsers value)? filterCategoryUsers,
    TResult Function(_LoadUserData value)? loadUserData,
    required TResult orElse(),
  }) {
    if (getAllData != null) {
      return getAllData(this);
    }
    return orElse();
  }
}

abstract class _getAllData implements HomeEvent {
  const factory _getAllData() = _$getAllDataImpl;
}

/// @nodoc
abstract class _$$FilterCategoryUsersImplCopyWith<$Res> {
  factory _$$FilterCategoryUsersImplCopyWith(_$FilterCategoryUsersImpl value,
          $Res Function(_$FilterCategoryUsersImpl) then) =
      __$$FilterCategoryUsersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String category});
}

/// @nodoc
class __$$FilterCategoryUsersImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$FilterCategoryUsersImpl>
    implements _$$FilterCategoryUsersImplCopyWith<$Res> {
  __$$FilterCategoryUsersImplCopyWithImpl(_$FilterCategoryUsersImpl _value,
      $Res Function(_$FilterCategoryUsersImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$FilterCategoryUsersImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FilterCategoryUsersImpl implements _FilterCategoryUsers {
  const _$FilterCategoryUsersImpl({required this.category});

  @override
  final String category;

  @override
  String toString() {
    return 'HomeEvent.filterCategoryUsers(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterCategoryUsersImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterCategoryUsersImplCopyWith<_$FilterCategoryUsersImpl> get copyWith =>
      __$$FilterCategoryUsersImplCopyWithImpl<_$FilterCategoryUsersImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllData,
    required TResult Function(String category) filterCategoryUsers,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        loadUserData,
  }) {
    return filterCategoryUsers(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllData,
    TResult? Function(String category)? filterCategoryUsers,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadUserData,
  }) {
    return filterCategoryUsers?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllData,
    TResult Function(String category)? filterCategoryUsers,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadUserData,
    required TResult orElse(),
  }) {
    if (filterCategoryUsers != null) {
      return filterCategoryUsers(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_getAllData value) getAllData,
    required TResult Function(_FilterCategoryUsers value) filterCategoryUsers,
    required TResult Function(_LoadUserData value) loadUserData,
  }) {
    return filterCategoryUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_getAllData value)? getAllData,
    TResult? Function(_FilterCategoryUsers value)? filterCategoryUsers,
    TResult? Function(_LoadUserData value)? loadUserData,
  }) {
    return filterCategoryUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_getAllData value)? getAllData,
    TResult Function(_FilterCategoryUsers value)? filterCategoryUsers,
    TResult Function(_LoadUserData value)? loadUserData,
    required TResult orElse(),
  }) {
    if (filterCategoryUsers != null) {
      return filterCategoryUsers(this);
    }
    return orElse();
  }
}

abstract class _FilterCategoryUsers implements HomeEvent {
  const factory _FilterCategoryUsers({required final String category}) =
      _$FilterCategoryUsersImpl;

  String get category;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterCategoryUsersImplCopyWith<_$FilterCategoryUsersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadUserDataImplCopyWith<$Res> {
  factory _$$LoadUserDataImplCopyWith(
          _$LoadUserDataImpl value, $Res Function(_$LoadUserDataImpl) then) =
      __$$LoadUserDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<QueryDocumentSnapshot<Map<String, dynamic>>> docs});
}

/// @nodoc
class __$$LoadUserDataImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$LoadUserDataImpl>
    implements _$$LoadUserDataImplCopyWith<$Res> {
  __$$LoadUserDataImplCopyWithImpl(
      _$LoadUserDataImpl _value, $Res Function(_$LoadUserDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? docs = null,
  }) {
    return _then(_$LoadUserDataImpl(
      docs: null == docs
          ? _value._docs
          : docs // ignore: cast_nullable_to_non_nullable
              as List<QueryDocumentSnapshot<Map<String, dynamic>>>,
    ));
  }
}

/// @nodoc

class _$LoadUserDataImpl implements _LoadUserData {
  const _$LoadUserDataImpl(
      {required final List<QueryDocumentSnapshot<Map<String, dynamic>>> docs})
      : _docs = docs;

  final List<QueryDocumentSnapshot<Map<String, dynamic>>> _docs;
  @override
  List<QueryDocumentSnapshot<Map<String, dynamic>>> get docs {
    if (_docs is EqualUnmodifiableListView) return _docs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_docs);
  }

  @override
  String toString() {
    return 'HomeEvent.loadUserData(docs: $docs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadUserDataImpl &&
            const DeepCollectionEquality().equals(other._docs, _docs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_docs));

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadUserDataImplCopyWith<_$LoadUserDataImpl> get copyWith =>
      __$$LoadUserDataImplCopyWithImpl<_$LoadUserDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllData,
    required TResult Function(String category) filterCategoryUsers,
    required TResult Function(
            List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)
        loadUserData,
  }) {
    return loadUserData(docs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllData,
    TResult? Function(String category)? filterCategoryUsers,
    TResult? Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadUserData,
  }) {
    return loadUserData?.call(docs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllData,
    TResult Function(String category)? filterCategoryUsers,
    TResult Function(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs)?
        loadUserData,
    required TResult orElse(),
  }) {
    if (loadUserData != null) {
      return loadUserData(docs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_getAllData value) getAllData,
    required TResult Function(_FilterCategoryUsers value) filterCategoryUsers,
    required TResult Function(_LoadUserData value) loadUserData,
  }) {
    return loadUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_getAllData value)? getAllData,
    TResult? Function(_FilterCategoryUsers value)? filterCategoryUsers,
    TResult? Function(_LoadUserData value)? loadUserData,
  }) {
    return loadUserData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_getAllData value)? getAllData,
    TResult Function(_FilterCategoryUsers value)? filterCategoryUsers,
    TResult Function(_LoadUserData value)? loadUserData,
    required TResult orElse(),
  }) {
    if (loadUserData != null) {
      return loadUserData(this);
    }
    return orElse();
  }
}

abstract class _LoadUserData implements HomeEvent {
  const factory _LoadUserData(
      {required final List<QueryDocumentSnapshot<Map<String, dynamic>>>
          docs}) = _$LoadUserDataImpl;

  List<QueryDocumentSnapshot<Map<String, dynamic>>> get docs;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadUserDataImplCopyWith<_$LoadUserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  List<ChatModel> get chatsModels => throw _privateConstructorUsedError;
  Stream<QuerySnapshot<Map<String, dynamic>>>? get chatsStream =>
      throw _privateConstructorUsedError;
  List<String> get categoryList => throw _privateConstructorUsedError;
  String get selectedCategory => throw _privateConstructorUsedError;
  List<ChatModel> get filteredChats => throw _privateConstructorUsedError;
  bool get filteredChatsEmpty => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isLoading,
            String errorMessage,
            List<ChatModel> chatsModels,
            Stream<QuerySnapshot<Map<String, dynamic>>>? chatsStream,
            List<String> categoryList,
            String selectedCategory,
            List<ChatModel> filteredChats,
            bool filteredChatsEmpty)
        loadedData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isLoading,
            String errorMessage,
            List<ChatModel> chatsModels,
            Stream<QuerySnapshot<Map<String, dynamic>>>? chatsStream,
            List<String> categoryList,
            String selectedCategory,
            List<ChatModel> filteredChats,
            bool filteredChatsEmpty)?
        loadedData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isLoading,
            String errorMessage,
            List<ChatModel> chatsModels,
            Stream<QuerySnapshot<Map<String, dynamic>>>? chatsStream,
            List<String> categoryList,
            String selectedCategory,
            List<ChatModel> filteredChats,
            bool filteredChatsEmpty)?
        loadedData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadedData value) loadedData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadedData value)? loadedData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadedData value)? loadedData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {bool isLoading,
      String errorMessage,
      List<ChatModel> chatsModels,
      Stream<QuerySnapshot<Map<String, dynamic>>>? chatsStream,
      List<String> categoryList,
      String selectedCategory,
      List<ChatModel> filteredChats,
      bool filteredChatsEmpty});
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? chatsModels = null,
    Object? chatsStream = freezed,
    Object? categoryList = null,
    Object? selectedCategory = null,
    Object? filteredChats = null,
    Object? filteredChatsEmpty = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      chatsModels: null == chatsModels
          ? _value.chatsModels
          : chatsModels // ignore: cast_nullable_to_non_nullable
              as List<ChatModel>,
      chatsStream: freezed == chatsStream
          ? _value.chatsStream
          : chatsStream // ignore: cast_nullable_to_non_nullable
              as Stream<QuerySnapshot<Map<String, dynamic>>>?,
      categoryList: null == categoryList
          ? _value.categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as String,
      filteredChats: null == filteredChats
          ? _value.filteredChats
          : filteredChats // ignore: cast_nullable_to_non_nullable
              as List<ChatModel>,
      filteredChatsEmpty: null == filteredChatsEmpty
          ? _value.filteredChatsEmpty
          : filteredChatsEmpty // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadedDataImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$LoadedDataImplCopyWith(
          _$LoadedDataImpl value, $Res Function(_$LoadedDataImpl) then) =
      __$$LoadedDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String errorMessage,
      List<ChatModel> chatsModels,
      Stream<QuerySnapshot<Map<String, dynamic>>>? chatsStream,
      List<String> categoryList,
      String selectedCategory,
      List<ChatModel> filteredChats,
      bool filteredChatsEmpty});
}

/// @nodoc
class __$$LoadedDataImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$LoadedDataImpl>
    implements _$$LoadedDataImplCopyWith<$Res> {
  __$$LoadedDataImplCopyWithImpl(
      _$LoadedDataImpl _value, $Res Function(_$LoadedDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? chatsModels = null,
    Object? chatsStream = freezed,
    Object? categoryList = null,
    Object? selectedCategory = null,
    Object? filteredChats = null,
    Object? filteredChatsEmpty = null,
  }) {
    return _then(_$LoadedDataImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      chatsModels: null == chatsModels
          ? _value._chatsModels
          : chatsModels // ignore: cast_nullable_to_non_nullable
              as List<ChatModel>,
      chatsStream: freezed == chatsStream
          ? _value.chatsStream
          : chatsStream // ignore: cast_nullable_to_non_nullable
              as Stream<QuerySnapshot<Map<String, dynamic>>>?,
      categoryList: null == categoryList
          ? _value._categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as String,
      filteredChats: null == filteredChats
          ? _value._filteredChats
          : filteredChats // ignore: cast_nullable_to_non_nullable
              as List<ChatModel>,
      filteredChatsEmpty: null == filteredChatsEmpty
          ? _value.filteredChatsEmpty
          : filteredChatsEmpty // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadedDataImpl implements _LoadedData {
  _$LoadedDataImpl(
      {this.isLoading = true,
      this.errorMessage = "",
      final List<ChatModel> chatsModels = const [],
      this.chatsStream = null,
      final List<String> categoryList = const [],
      this.selectedCategory = "All",
      final List<ChatModel> filteredChats = const [],
      this.filteredChatsEmpty = false})
      : _chatsModels = chatsModels,
        _categoryList = categoryList,
        _filteredChats = filteredChats;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String errorMessage;
  final List<ChatModel> _chatsModels;
  @override
  @JsonKey()
  List<ChatModel> get chatsModels {
    if (_chatsModels is EqualUnmodifiableListView) return _chatsModels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chatsModels);
  }

  @override
  @JsonKey()
  final Stream<QuerySnapshot<Map<String, dynamic>>>? chatsStream;
  final List<String> _categoryList;
  @override
  @JsonKey()
  List<String> get categoryList {
    if (_categoryList is EqualUnmodifiableListView) return _categoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryList);
  }

  @override
  @JsonKey()
  final String selectedCategory;
  final List<ChatModel> _filteredChats;
  @override
  @JsonKey()
  List<ChatModel> get filteredChats {
    if (_filteredChats is EqualUnmodifiableListView) return _filteredChats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredChats);
  }

  @override
  @JsonKey()
  final bool filteredChatsEmpty;

  @override
  String toString() {
    return 'HomeState.loadedData(isLoading: $isLoading, errorMessage: $errorMessage, chatsModels: $chatsModels, chatsStream: $chatsStream, categoryList: $categoryList, selectedCategory: $selectedCategory, filteredChats: $filteredChats, filteredChatsEmpty: $filteredChatsEmpty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedDataImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality()
                .equals(other._chatsModels, _chatsModels) &&
            (identical(other.chatsStream, chatsStream) ||
                other.chatsStream == chatsStream) &&
            const DeepCollectionEquality()
                .equals(other._categoryList, _categoryList) &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory) &&
            const DeepCollectionEquality()
                .equals(other._filteredChats, _filteredChats) &&
            (identical(other.filteredChatsEmpty, filteredChatsEmpty) ||
                other.filteredChatsEmpty == filteredChatsEmpty));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      errorMessage,
      const DeepCollectionEquality().hash(_chatsModels),
      chatsStream,
      const DeepCollectionEquality().hash(_categoryList),
      selectedCategory,
      const DeepCollectionEquality().hash(_filteredChats),
      filteredChatsEmpty);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedDataImplCopyWith<_$LoadedDataImpl> get copyWith =>
      __$$LoadedDataImplCopyWithImpl<_$LoadedDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isLoading,
            String errorMessage,
            List<ChatModel> chatsModels,
            Stream<QuerySnapshot<Map<String, dynamic>>>? chatsStream,
            List<String> categoryList,
            String selectedCategory,
            List<ChatModel> filteredChats,
            bool filteredChatsEmpty)
        loadedData,
  }) {
    return loadedData(isLoading, errorMessage, chatsModels, chatsStream,
        categoryList, selectedCategory, filteredChats, filteredChatsEmpty);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isLoading,
            String errorMessage,
            List<ChatModel> chatsModels,
            Stream<QuerySnapshot<Map<String, dynamic>>>? chatsStream,
            List<String> categoryList,
            String selectedCategory,
            List<ChatModel> filteredChats,
            bool filteredChatsEmpty)?
        loadedData,
  }) {
    return loadedData?.call(isLoading, errorMessage, chatsModels, chatsStream,
        categoryList, selectedCategory, filteredChats, filteredChatsEmpty);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isLoading,
            String errorMessage,
            List<ChatModel> chatsModels,
            Stream<QuerySnapshot<Map<String, dynamic>>>? chatsStream,
            List<String> categoryList,
            String selectedCategory,
            List<ChatModel> filteredChats,
            bool filteredChatsEmpty)?
        loadedData,
    required TResult orElse(),
  }) {
    if (loadedData != null) {
      return loadedData(isLoading, errorMessage, chatsModels, chatsStream,
          categoryList, selectedCategory, filteredChats, filteredChatsEmpty);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadedData value) loadedData,
  }) {
    return loadedData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadedData value)? loadedData,
  }) {
    return loadedData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadedData value)? loadedData,
    required TResult orElse(),
  }) {
    if (loadedData != null) {
      return loadedData(this);
    }
    return orElse();
  }
}

abstract class _LoadedData implements HomeState {
  factory _LoadedData(
      {final bool isLoading,
      final String errorMessage,
      final List<ChatModel> chatsModels,
      final Stream<QuerySnapshot<Map<String, dynamic>>>? chatsStream,
      final List<String> categoryList,
      final String selectedCategory,
      final List<ChatModel> filteredChats,
      final bool filteredChatsEmpty}) = _$LoadedDataImpl;

  @override
  bool get isLoading;
  @override
  String get errorMessage;
  @override
  List<ChatModel> get chatsModels;
  @override
  Stream<QuerySnapshot<Map<String, dynamic>>>? get chatsStream;
  @override
  List<String> get categoryList;
  @override
  String get selectedCategory;
  @override
  List<ChatModel> get filteredChats;
  @override
  bool get filteredChatsEmpty;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedDataImplCopyWith<_$LoadedDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
