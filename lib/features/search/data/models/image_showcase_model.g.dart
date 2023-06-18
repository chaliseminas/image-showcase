// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_showcase_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ImageShowcaseModel _$$_ImageShowcaseModelFromJson(
        Map<String, dynamic> json) =>
    _$_ImageShowcaseModel(
      total: json['total'] as int?,
      totalHits: json['totalHits'] as int?,
      hits: (json['hits'] as List<dynamic>?)
          ?.map((e) => Hits.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ImageShowcaseModelToJson(
        _$_ImageShowcaseModel instance) =>
    <String, dynamic>{
      'total': instance.total,
      'totalHits': instance.totalHits,
      'hits': instance.hits,
    };

_$_Hits _$$_HitsFromJson(Map<String, dynamic> json) => _$_Hits(
      id: json['id'] as int?,
      pageUrl: json['pageURL'] as String?,
      type: json['type'] as String?,
      tags: json['tags'] as String?,
      previewUrl: json['previewURL'] as String?,
      previewWidth: json['previewWidth'] as int?,
      previewHeight: json['previewHeight'] as int?,
      webformatUrl: json['webformatURL'] as String?,
      webformatWidth: json['webformatWidth'] as int?,
      webformatHeight: json['webformatHeight'] as int?,
      largeImageUrl: json['largeImageURL'] as String?,
      imageWidth: json['imageWidth'] as int?,
      imageHeight: json['imageHeight'] as int?,
      imageSize: json['imageSize'] as int?,
      views: json['views'] as int?,
      downloads: json['downloads'] as int?,
      collections: json['collections'] as int?,
      likes: json['likes'] as int?,
      comments: json['comments'] as int?,
      userId: json['user_id'] as int?,
      user: json['user'] as String?,
      userImageUrl: json['userImageURL'] as String?,
    );

Map<String, dynamic> _$$_HitsToJson(_$_Hits instance) => <String, dynamic>{
      'id': instance.id,
      'pageURL': instance.pageUrl,
      'type': instance.type,
      'tags': instance.tags,
      'previewURL': instance.previewUrl,
      'previewWidth': instance.previewWidth,
      'previewHeight': instance.previewHeight,
      'webformatURL': instance.webformatUrl,
      'webformatWidth': instance.webformatWidth,
      'webformatHeight': instance.webformatHeight,
      'largeImageURL': instance.largeImageUrl,
      'imageWidth': instance.imageWidth,
      'imageHeight': instance.imageHeight,
      'imageSize': instance.imageSize,
      'views': instance.views,
      'downloads': instance.downloads,
      'collections': instance.collections,
      'likes': instance.likes,
      'comments': instance.comments,
      'user_id': instance.userId,
      'user': instance.user,
      'userImageURL': instance.userImageUrl,
    };
