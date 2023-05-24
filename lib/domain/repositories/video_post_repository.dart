import 'package:tok_tik/domain/entities/video_post.dart';

abstract class VideoPostRepository {
  Future<List<VideoPost>> getTendingVideosByPage(int page);

  Future<List<VideoPost>> getFavoritesVideosByUser(String userID);
}