import 'package:instagram_clone/models/user_model.dart';
import 'package:instagram_clone/utils/constants/app_constant.dart';

class ReelsModel {
  UserModel user;
  int likes;
  int comments;
  String videoPath;
  String videoDescription;

  ReelsModel({
    required this.user,
    required this.likes,
    required this.comments,
    required this.videoPath,
    required this.videoDescription,
  });

  static List<ReelsModel> reelsList=[
    ReelsModel(user: UserModel(userName: "marshall", imgUrl: "https://i.pinimg.com/736x/fd/f7/2f/fdf72f22d4149478c7fed478010eb3f2.jpg"), likes: 18, comments: 6, videoPath: AppConstant.video1, videoDescription: "It is a long established fact that a reader will be distracted by the readable content"),
    ReelsModel(user: UserModel(userName: "ted", imgUrl: "https://i.pinimg.com/originals/b8/9d/c7/b89dc74419631169fa0899135942e2f2.jpg"), likes: 63, comments: 24, videoPath: AppConstant.video2, videoDescription: "when an unknown printer took a galley of type and scrambled it"),
    ReelsModel(user: UserModel(userName: "robin", imgUrl: "https://i.pinimg.com/originals/c2/d4/55/c2d455e5b3dfffbda8205df633e73846.jpg"), likes: 87, comments: 42, videoPath: AppConstant.video3, videoDescription: "Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature"),
  ];
}
