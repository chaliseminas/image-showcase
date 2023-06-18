// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_showcase_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageShowcaseModel _$ImageShowcaseModelFromJson(Map<String, dynamic> json) {
  return _ImageShowcaseModel.fromJson(json);
}

/// @nodoc
mixin _$ImageShowcaseModel {
  @JsonKey(name: "total")
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: "totalHits")
  int? get totalHits => throw _privateConstructorUsedError;
  @JsonKey(name: "hits")
  List<Hits>? get hits => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageShowcaseModelCopyWith<ImageShowcaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageShowcaseModelCopyWith<$Res> {
  factory $ImageShowcaseModelCopyWith(
          ImageShowcaseModel value, $Res Function(ImageShowcaseModel) then) =
      _$ImageShowcaseModelCopyWithImpl<$Res, ImageShowcaseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "total") int? total,
      @JsonKey(name: "totalHits") int? totalHits,
      @JsonKey(name: "hits") List<Hits>? hits});
}

/// @nodoc
class _$ImageShowcaseModelCopyWithImpl<$Res, $Val extends ImageShowcaseModel>
    implements $ImageShowcaseModelCopyWith<$Res> {
  _$ImageShowcaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? totalHits = freezed,
    Object? hits = freezed,
  }) {
    return _then(_value.copyWith(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      totalHits: freezed == totalHits
          ? _value.totalHits
          : totalHits // ignore: cast_nullable_to_non_nullable
              as int?,
      hits: freezed == hits
          ? _value.hits
          : hits // ignore: cast_nullable_to_non_nullable
              as List<Hits>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageShowcaseModelCopyWith<$Res>
    implements $ImageShowcaseModelCopyWith<$Res> {
  factory _$$_ImageShowcaseModelCopyWith(_$_ImageShowcaseModel value,
          $Res Function(_$_ImageShowcaseModel) then) =
      __$$_ImageShowcaseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "total") int? total,
      @JsonKey(name: "totalHits") int? totalHits,
      @JsonKey(name: "hits") List<Hits>? hits});
}

/// @nodoc
class __$$_ImageShowcaseModelCopyWithImpl<$Res>
    extends _$ImageShowcaseModelCopyWithImpl<$Res, _$_ImageShowcaseModel>
    implements _$$_ImageShowcaseModelCopyWith<$Res> {
  __$$_ImageShowcaseModelCopyWithImpl(
      _$_ImageShowcaseModel _value, $Res Function(_$_ImageShowcaseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? totalHits = freezed,
    Object? hits = freezed,
  }) {
    return _then(_$_ImageShowcaseModel(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      totalHits: freezed == totalHits
          ? _value.totalHits
          : totalHits // ignore: cast_nullable_to_non_nullable
              as int?,
      hits: freezed == hits
          ? _value._hits
          : hits // ignore: cast_nullable_to_non_nullable
              as List<Hits>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageShowcaseModel implements _ImageShowcaseModel {
  _$_ImageShowcaseModel(
      {@JsonKey(name: "total") this.total,
      @JsonKey(name: "totalHits") this.totalHits,
      @JsonKey(name: "hits") final List<Hits>? hits})
      : _hits = hits;

  factory _$_ImageShowcaseModel.fromJson(Map<String, dynamic> json) =>
      _$$_ImageShowcaseModelFromJson(json);

  @override
  @JsonKey(name: "total")
  final int? total;
  @override
  @JsonKey(name: "totalHits")
  final int? totalHits;
  final List<Hits>? _hits;
  @override
  @JsonKey(name: "hits")
  List<Hits>? get hits {
    final value = _hits;
    if (value == null) return null;
    if (_hits is EqualUnmodifiableListView) return _hits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ImageShowcaseModel(total: $total, totalHits: $totalHits, hits: $hits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageShowcaseModel &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.totalHits, totalHits) ||
                other.totalHits == totalHits) &&
            const DeepCollectionEquality().equals(other._hits, _hits));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total, totalHits,
      const DeepCollectionEquality().hash(_hits));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageShowcaseModelCopyWith<_$_ImageShowcaseModel> get copyWith =>
      __$$_ImageShowcaseModelCopyWithImpl<_$_ImageShowcaseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageShowcaseModelToJson(
      this,
    );
  }
}

abstract class _ImageShowcaseModel implements ImageShowcaseModel {
  factory _ImageShowcaseModel(
      {@JsonKey(name: "total") final int? total,
      @JsonKey(name: "totalHits") final int? totalHits,
      @JsonKey(name: "hits") final List<Hits>? hits}) = _$_ImageShowcaseModel;

  factory _ImageShowcaseModel.fromJson(Map<String, dynamic> json) =
      _$_ImageShowcaseModel.fromJson;

  @override
  @JsonKey(name: "total")
  int? get total;
  @override
  @JsonKey(name: "totalHits")
  int? get totalHits;
  @override
  @JsonKey(name: "hits")
  List<Hits>? get hits;
  @override
  @JsonKey(ignore: true)
  _$$_ImageShowcaseModelCopyWith<_$_ImageShowcaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Hits _$HitsFromJson(Map<String, dynamic> json) {
  return _Hits.fromJson(json);
}

/// @nodoc
mixin _$Hits {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "pageURL")
  String? get pageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "tags")
  String? get tags => throw _privateConstructorUsedError;
  @JsonKey(name: "previewURL")
  String? get previewUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "previewWidth")
  int? get previewWidth => throw _privateConstructorUsedError;
  @JsonKey(name: "previewHeight")
  int? get previewHeight => throw _privateConstructorUsedError;
  @JsonKey(name: "webformatURL")
  String? get webformatUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "webformatWidth")
  int? get webformatWidth => throw _privateConstructorUsedError;
  @JsonKey(name: "webformatHeight")
  int? get webformatHeight => throw _privateConstructorUsedError;
  @JsonKey(name: "largeImageURL")
  String? get largeImageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "imageWidth")
  int? get imageWidth => throw _privateConstructorUsedError;
  @JsonKey(name: "imageHeight")
  int? get imageHeight => throw _privateConstructorUsedError;
  @JsonKey(name: "imageSize")
  int? get imageSize => throw _privateConstructorUsedError;
  @JsonKey(name: "views")
  int? get views => throw _privateConstructorUsedError;
  @JsonKey(name: "downloads")
  int? get downloads => throw _privateConstructorUsedError;
  @JsonKey(name: "collections")
  int? get collections => throw _privateConstructorUsedError;
  @JsonKey(name: "likes")
  int? get likes => throw _privateConstructorUsedError;
  @JsonKey(name: "comments")
  int? get comments => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "user")
  String? get user => throw _privateConstructorUsedError;
  @JsonKey(name: "userImageURL")
  String? get userImageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HitsCopyWith<Hits> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HitsCopyWith<$Res> {
  factory $HitsCopyWith(Hits value, $Res Function(Hits) then) =
      _$HitsCopyWithImpl<$Res, Hits>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "pageURL") String? pageUrl,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "tags") String? tags,
      @JsonKey(name: "previewURL") String? previewUrl,
      @JsonKey(name: "previewWidth") int? previewWidth,
      @JsonKey(name: "previewHeight") int? previewHeight,
      @JsonKey(name: "webformatURL") String? webformatUrl,
      @JsonKey(name: "webformatWidth") int? webformatWidth,
      @JsonKey(name: "webformatHeight") int? webformatHeight,
      @JsonKey(name: "largeImageURL") String? largeImageUrl,
      @JsonKey(name: "imageWidth") int? imageWidth,
      @JsonKey(name: "imageHeight") int? imageHeight,
      @JsonKey(name: "imageSize") int? imageSize,
      @JsonKey(name: "views") int? views,
      @JsonKey(name: "downloads") int? downloads,
      @JsonKey(name: "collections") int? collections,
      @JsonKey(name: "likes") int? likes,
      @JsonKey(name: "comments") int? comments,
      @JsonKey(name: "user_id") int? userId,
      @JsonKey(name: "user") String? user,
      @JsonKey(name: "userImageURL") String? userImageUrl});
}

/// @nodoc
class _$HitsCopyWithImpl<$Res, $Val extends Hits>
    implements $HitsCopyWith<$Res> {
  _$HitsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? pageUrl = freezed,
    Object? type = freezed,
    Object? tags = freezed,
    Object? previewUrl = freezed,
    Object? previewWidth = freezed,
    Object? previewHeight = freezed,
    Object? webformatUrl = freezed,
    Object? webformatWidth = freezed,
    Object? webformatHeight = freezed,
    Object? largeImageUrl = freezed,
    Object? imageWidth = freezed,
    Object? imageHeight = freezed,
    Object? imageSize = freezed,
    Object? views = freezed,
    Object? downloads = freezed,
    Object? collections = freezed,
    Object? likes = freezed,
    Object? comments = freezed,
    Object? userId = freezed,
    Object? user = freezed,
    Object? userImageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      pageUrl: freezed == pageUrl
          ? _value.pageUrl
          : pageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String?,
      previewUrl: freezed == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      previewWidth: freezed == previewWidth
          ? _value.previewWidth
          : previewWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      previewHeight: freezed == previewHeight
          ? _value.previewHeight
          : previewHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      webformatUrl: freezed == webformatUrl
          ? _value.webformatUrl
          : webformatUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      webformatWidth: freezed == webformatWidth
          ? _value.webformatWidth
          : webformatWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      webformatHeight: freezed == webformatHeight
          ? _value.webformatHeight
          : webformatHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      largeImageUrl: freezed == largeImageUrl
          ? _value.largeImageUrl
          : largeImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      imageWidth: freezed == imageWidth
          ? _value.imageWidth
          : imageWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      imageHeight: freezed == imageHeight
          ? _value.imageHeight
          : imageHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      imageSize: freezed == imageSize
          ? _value.imageSize
          : imageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
      downloads: freezed == downloads
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as int?,
      collections: freezed == collections
          ? _value.collections
          : collections // ignore: cast_nullable_to_non_nullable
              as int?,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      userImageUrl: freezed == userImageUrl
          ? _value.userImageUrl
          : userImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HitsCopyWith<$Res> implements $HitsCopyWith<$Res> {
  factory _$$_HitsCopyWith(_$_Hits value, $Res Function(_$_Hits) then) =
      __$$_HitsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "pageURL") String? pageUrl,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "tags") String? tags,
      @JsonKey(name: "previewURL") String? previewUrl,
      @JsonKey(name: "previewWidth") int? previewWidth,
      @JsonKey(name: "previewHeight") int? previewHeight,
      @JsonKey(name: "webformatURL") String? webformatUrl,
      @JsonKey(name: "webformatWidth") int? webformatWidth,
      @JsonKey(name: "webformatHeight") int? webformatHeight,
      @JsonKey(name: "largeImageURL") String? largeImageUrl,
      @JsonKey(name: "imageWidth") int? imageWidth,
      @JsonKey(name: "imageHeight") int? imageHeight,
      @JsonKey(name: "imageSize") int? imageSize,
      @JsonKey(name: "views") int? views,
      @JsonKey(name: "downloads") int? downloads,
      @JsonKey(name: "collections") int? collections,
      @JsonKey(name: "likes") int? likes,
      @JsonKey(name: "comments") int? comments,
      @JsonKey(name: "user_id") int? userId,
      @JsonKey(name: "user") String? user,
      @JsonKey(name: "userImageURL") String? userImageUrl});
}

/// @nodoc
class __$$_HitsCopyWithImpl<$Res> extends _$HitsCopyWithImpl<$Res, _$_Hits>
    implements _$$_HitsCopyWith<$Res> {
  __$$_HitsCopyWithImpl(_$_Hits _value, $Res Function(_$_Hits) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? pageUrl = freezed,
    Object? type = freezed,
    Object? tags = freezed,
    Object? previewUrl = freezed,
    Object? previewWidth = freezed,
    Object? previewHeight = freezed,
    Object? webformatUrl = freezed,
    Object? webformatWidth = freezed,
    Object? webformatHeight = freezed,
    Object? largeImageUrl = freezed,
    Object? imageWidth = freezed,
    Object? imageHeight = freezed,
    Object? imageSize = freezed,
    Object? views = freezed,
    Object? downloads = freezed,
    Object? collections = freezed,
    Object? likes = freezed,
    Object? comments = freezed,
    Object? userId = freezed,
    Object? user = freezed,
    Object? userImageUrl = freezed,
  }) {
    return _then(_$_Hits(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      pageUrl: freezed == pageUrl
          ? _value.pageUrl
          : pageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String?,
      previewUrl: freezed == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      previewWidth: freezed == previewWidth
          ? _value.previewWidth
          : previewWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      previewHeight: freezed == previewHeight
          ? _value.previewHeight
          : previewHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      webformatUrl: freezed == webformatUrl
          ? _value.webformatUrl
          : webformatUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      webformatWidth: freezed == webformatWidth
          ? _value.webformatWidth
          : webformatWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      webformatHeight: freezed == webformatHeight
          ? _value.webformatHeight
          : webformatHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      largeImageUrl: freezed == largeImageUrl
          ? _value.largeImageUrl
          : largeImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      imageWidth: freezed == imageWidth
          ? _value.imageWidth
          : imageWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      imageHeight: freezed == imageHeight
          ? _value.imageHeight
          : imageHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      imageSize: freezed == imageSize
          ? _value.imageSize
          : imageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
      downloads: freezed == downloads
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as int?,
      collections: freezed == collections
          ? _value.collections
          : collections // ignore: cast_nullable_to_non_nullable
              as int?,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      userImageUrl: freezed == userImageUrl
          ? _value.userImageUrl
          : userImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Hits implements _Hits {
  _$_Hits(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "pageURL") this.pageUrl,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "tags") this.tags,
      @JsonKey(name: "previewURL") this.previewUrl,
      @JsonKey(name: "previewWidth") this.previewWidth,
      @JsonKey(name: "previewHeight") this.previewHeight,
      @JsonKey(name: "webformatURL") this.webformatUrl,
      @JsonKey(name: "webformatWidth") this.webformatWidth,
      @JsonKey(name: "webformatHeight") this.webformatHeight,
      @JsonKey(name: "largeImageURL") this.largeImageUrl,
      @JsonKey(name: "imageWidth") this.imageWidth,
      @JsonKey(name: "imageHeight") this.imageHeight,
      @JsonKey(name: "imageSize") this.imageSize,
      @JsonKey(name: "views") this.views,
      @JsonKey(name: "downloads") this.downloads,
      @JsonKey(name: "collections") this.collections,
      @JsonKey(name: "likes") this.likes,
      @JsonKey(name: "comments") this.comments,
      @JsonKey(name: "user_id") this.userId,
      @JsonKey(name: "user") this.user,
      @JsonKey(name: "userImageURL") this.userImageUrl});

  factory _$_Hits.fromJson(Map<String, dynamic> json) => _$$_HitsFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "pageURL")
  final String? pageUrl;
  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "tags")
  final String? tags;
  @override
  @JsonKey(name: "previewURL")
  final String? previewUrl;
  @override
  @JsonKey(name: "previewWidth")
  final int? previewWidth;
  @override
  @JsonKey(name: "previewHeight")
  final int? previewHeight;
  @override
  @JsonKey(name: "webformatURL")
  final String? webformatUrl;
  @override
  @JsonKey(name: "webformatWidth")
  final int? webformatWidth;
  @override
  @JsonKey(name: "webformatHeight")
  final int? webformatHeight;
  @override
  @JsonKey(name: "largeImageURL")
  final String? largeImageUrl;
  @override
  @JsonKey(name: "imageWidth")
  final int? imageWidth;
  @override
  @JsonKey(name: "imageHeight")
  final int? imageHeight;
  @override
  @JsonKey(name: "imageSize")
  final int? imageSize;
  @override
  @JsonKey(name: "views")
  final int? views;
  @override
  @JsonKey(name: "downloads")
  final int? downloads;
  @override
  @JsonKey(name: "collections")
  final int? collections;
  @override
  @JsonKey(name: "likes")
  final int? likes;
  @override
  @JsonKey(name: "comments")
  final int? comments;
  @override
  @JsonKey(name: "user_id")
  final int? userId;
  @override
  @JsonKey(name: "user")
  final String? user;
  @override
  @JsonKey(name: "userImageURL")
  final String? userImageUrl;

  @override
  String toString() {
    return 'Hits(id: $id, pageUrl: $pageUrl, type: $type, tags: $tags, previewUrl: $previewUrl, previewWidth: $previewWidth, previewHeight: $previewHeight, webformatUrl: $webformatUrl, webformatWidth: $webformatWidth, webformatHeight: $webformatHeight, largeImageUrl: $largeImageUrl, imageWidth: $imageWidth, imageHeight: $imageHeight, imageSize: $imageSize, views: $views, downloads: $downloads, collections: $collections, likes: $likes, comments: $comments, userId: $userId, user: $user, userImageUrl: $userImageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Hits &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pageUrl, pageUrl) || other.pageUrl == pageUrl) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.tags, tags) || other.tags == tags) &&
            (identical(other.previewUrl, previewUrl) ||
                other.previewUrl == previewUrl) &&
            (identical(other.previewWidth, previewWidth) ||
                other.previewWidth == previewWidth) &&
            (identical(other.previewHeight, previewHeight) ||
                other.previewHeight == previewHeight) &&
            (identical(other.webformatUrl, webformatUrl) ||
                other.webformatUrl == webformatUrl) &&
            (identical(other.webformatWidth, webformatWidth) ||
                other.webformatWidth == webformatWidth) &&
            (identical(other.webformatHeight, webformatHeight) ||
                other.webformatHeight == webformatHeight) &&
            (identical(other.largeImageUrl, largeImageUrl) ||
                other.largeImageUrl == largeImageUrl) &&
            (identical(other.imageWidth, imageWidth) ||
                other.imageWidth == imageWidth) &&
            (identical(other.imageHeight, imageHeight) ||
                other.imageHeight == imageHeight) &&
            (identical(other.imageSize, imageSize) ||
                other.imageSize == imageSize) &&
            (identical(other.views, views) || other.views == views) &&
            (identical(other.downloads, downloads) ||
                other.downloads == downloads) &&
            (identical(other.collections, collections) ||
                other.collections == collections) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.comments, comments) ||
                other.comments == comments) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.userImageUrl, userImageUrl) ||
                other.userImageUrl == userImageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        pageUrl,
        type,
        tags,
        previewUrl,
        previewWidth,
        previewHeight,
        webformatUrl,
        webformatWidth,
        webformatHeight,
        largeImageUrl,
        imageWidth,
        imageHeight,
        imageSize,
        views,
        downloads,
        collections,
        likes,
        comments,
        userId,
        user,
        userImageUrl
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HitsCopyWith<_$_Hits> get copyWith =>
      __$$_HitsCopyWithImpl<_$_Hits>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HitsToJson(
      this,
    );
  }
}

abstract class _Hits implements Hits {
  factory _Hits(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "pageURL") final String? pageUrl,
      @JsonKey(name: "type") final String? type,
      @JsonKey(name: "tags") final String? tags,
      @JsonKey(name: "previewURL") final String? previewUrl,
      @JsonKey(name: "previewWidth") final int? previewWidth,
      @JsonKey(name: "previewHeight") final int? previewHeight,
      @JsonKey(name: "webformatURL") final String? webformatUrl,
      @JsonKey(name: "webformatWidth") final int? webformatWidth,
      @JsonKey(name: "webformatHeight") final int? webformatHeight,
      @JsonKey(name: "largeImageURL") final String? largeImageUrl,
      @JsonKey(name: "imageWidth") final int? imageWidth,
      @JsonKey(name: "imageHeight") final int? imageHeight,
      @JsonKey(name: "imageSize") final int? imageSize,
      @JsonKey(name: "views") final int? views,
      @JsonKey(name: "downloads") final int? downloads,
      @JsonKey(name: "collections") final int? collections,
      @JsonKey(name: "likes") final int? likes,
      @JsonKey(name: "comments") final int? comments,
      @JsonKey(name: "user_id") final int? userId,
      @JsonKey(name: "user") final String? user,
      @JsonKey(name: "userImageURL") final String? userImageUrl}) = _$_Hits;

  factory _Hits.fromJson(Map<String, dynamic> json) = _$_Hits.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "pageURL")
  String? get pageUrl;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "tags")
  String? get tags;
  @override
  @JsonKey(name: "previewURL")
  String? get previewUrl;
  @override
  @JsonKey(name: "previewWidth")
  int? get previewWidth;
  @override
  @JsonKey(name: "previewHeight")
  int? get previewHeight;
  @override
  @JsonKey(name: "webformatURL")
  String? get webformatUrl;
  @override
  @JsonKey(name: "webformatWidth")
  int? get webformatWidth;
  @override
  @JsonKey(name: "webformatHeight")
  int? get webformatHeight;
  @override
  @JsonKey(name: "largeImageURL")
  String? get largeImageUrl;
  @override
  @JsonKey(name: "imageWidth")
  int? get imageWidth;
  @override
  @JsonKey(name: "imageHeight")
  int? get imageHeight;
  @override
  @JsonKey(name: "imageSize")
  int? get imageSize;
  @override
  @JsonKey(name: "views")
  int? get views;
  @override
  @JsonKey(name: "downloads")
  int? get downloads;
  @override
  @JsonKey(name: "collections")
  int? get collections;
  @override
  @JsonKey(name: "likes")
  int? get likes;
  @override
  @JsonKey(name: "comments")
  int? get comments;
  @override
  @JsonKey(name: "user_id")
  int? get userId;
  @override
  @JsonKey(name: "user")
  String? get user;
  @override
  @JsonKey(name: "userImageURL")
  String? get userImageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_HitsCopyWith<_$_Hits> get copyWith => throw _privateConstructorUsedError;
}
