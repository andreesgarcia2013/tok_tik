import 'package:tok_tik/domain/datasources/video_post_datasource.dart';
import 'package:tok_tik/domain/entities/video_post.dart';
import 'package:tok_tik/domain/repositories/video_post_repository.dart';

class VideoRepositoryImpl implements VideoPostRepository{

  final VideoPostDatasource videoDatasource;

  VideoRepositoryImpl({required this.videoDatasource});
  @override
  Future<List<VideoPost>> getFavoritesVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTendingVideosByPage(int page) {
    return videoDatasource.getTendingVideosByPage(page);
  }
  
}