import 'package:flutter/material.dart';
import 'package:tok_tik/domain/entities/video_post.dart';
import 'package:tok_tik/domain/repositories/video_post_repository.dart';
import 'package:tok_tik/infrastructure/models/local_video_model.dart';
import 'package:tok_tik/shared/data/local_video_post.dart';

class DiscoverProvider extends ChangeNotifier {

  //TODO: Repository, DataSource
  final VideoPostRepository videoRepository;

  bool initialLoading=true;
  List<VideoPost> videos=[];

  DiscoverProvider(this.videoRepository);

  Future<void> loadNextPage() async{
    // await Future.delayed(const Duration(seconds: 2));
    // final List<VideoPost> newVideos=videoPosts.map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity()).toList();
    final newVideos=await videoRepository.getTendingVideosByPage(1);
    videos.addAll(newVideos);
    initialLoading=false;
    notifyListeners();
  }
}