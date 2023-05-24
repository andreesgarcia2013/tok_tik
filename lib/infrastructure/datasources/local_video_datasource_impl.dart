import 'package:tok_tik/domain/datasources/video_post_datasource.dart';
import 'package:tok_tik/domain/entities/video_post.dart';
import 'package:tok_tik/infrastructure/models/local_video_model.dart';
import 'package:tok_tik/shared/data/local_video_post.dart';

class LocalVideoDatasourceImpl implements VideoPostDatasource {
  @override
  Future<List<VideoPost>> getFavoritesVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTendingVideosByPage(int page) async {
    await Future.delayed(Duration(seconds: 2));
    final List<VideoPost> newVideos=videoPosts.map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity()).toList();

  return newVideos;
  }
  
}