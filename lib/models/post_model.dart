import 'package:instagram_clone/models/user_model.dart';
import 'package:instagram_clone/utils/constants/app_constant.dart';

class PostModel {
  UserModel userModel;
  String imgUrl;
  int likes;
  int comments;

  PostModel(
      {required this.userModel,
      required this.imgUrl,
      required this.likes,
      required this.comments});

  static List<PostModel> posts = [
    PostModel(
        userModel: UserModel(
            userName: "ted",
            imgUrl:
                "https://i.pinimg.com/originals/b8/9d/c7/b89dc74419631169fa0899135942e2f2.jpg"),
        imgUrl:
            "https://i.pinimg.com/originals/ac/64/69/ac64696850698fde65d45da6b67fd214.jpg",
        likes: 125,
        comments: 12),
    PostModel(
        userModel: UserModel(
            userName: "robin",
            imgUrl:
                "https://i.pinimg.com/originals/c2/d4/55/c2d455e5b3dfffbda8205df633e73846.jpg"),
        imgUrl:
            "https://tvline.com/wp-content/uploads/2015/09/himym-pilot-revisited.jpg?w=620",
        likes: 43,
        comments: 15),
    PostModel(
        userModel:
            UserModel(userName: "barney", imgUrl: AppConstant.profilePic),
        imgUrl:
            "https://www.pinkvilla.com/files/styles/amp_metadata_content_image/public/barney_stinson.jpg",
        likes: 456,
        comments: 22),
    PostModel(
        userModel: UserModel(
            userName: "ted",
            imgUrl:
                "https://i.pinimg.com/originals/b8/9d/c7/b89dc74419631169fa0899135942e2f2.jpg"),
        imgUrl:
            "https://static.onecms.io/wp-content/uploads/sites/6/2013/12/himym-ted_1.jpg",
        likes: 232,
        comments: 17),
    PostModel(
        userModel: UserModel(
            userName: "marshall",
            imgUrl:
                "https://i.pinimg.com/736x/fd/f7/2f/fdf72f22d4149478c7fed478010eb3f2.jpg"),
        imgUrl:
            "https://seyler.ekstat.com/img/max/800/n/njAxoAZZuJfJuPNo-637136501555158846.jpg",
        likes: 45,
        comments: 54),
    PostModel(
        userModel: UserModel(
            userName: "lily",
            imgUrl:
                "https://i.pinimg.com/originals/d2/d6/38/d2d638021f3ebfc1ba3e6526fee66f43.jpg"),
        imgUrl:
            "https://i.pinimg.com/originals/04/d6/6e/04d66ed006256df41b6e018707e5c927.png",
        likes: 12,
        comments: 14),
    PostModel(
        userModel: UserModel(
            userName: "ted",
            imgUrl:
                "https://i.pinimg.com/originals/b8/9d/c7/b89dc74419631169fa0899135942e2f2.jpg"),
        imgUrl:
            "https://i.pinimg.com/originals/ac/64/69/ac64696850698fde65d45da6b67fd214.jpg",
        likes: 2121,
        comments: 36),
    PostModel(
        userModel: UserModel(
            userName: "robin",
            imgUrl:
                "https://i.pinimg.com/originals/c2/d4/55/c2d455e5b3dfffbda8205df633e73846.jpg"),
        imgUrl:
            "https://tvline.com/wp-content/uploads/2015/09/himym-pilot-revisited.jpg?w=620",
        likes: 2121,
        comments: 56),
    PostModel(
        userModel:
            UserModel(userName: "barney", imgUrl: AppConstant.profilePic),
        imgUrl:
            "https://www.pinkvilla.com/files/styles/amp_metadata_content_image/public/barney_stinson.jpg",
        likes: 212,
        comments: 5),
    PostModel(
        userModel: UserModel(
            userName: "ted",
            imgUrl:
                "https://i.pinimg.com/originals/b8/9d/c7/b89dc74419631169fa0899135942e2f2.jpg"),
        imgUrl:
            "https://static.onecms.io/wp-content/uploads/sites/6/2013/12/himym-ted_1.jpg",
        likes: 11215,
        comments: 18),
    PostModel(
        userModel: UserModel(
            userName: "marshall",
            imgUrl:
                "https://i.pinimg.com/736x/fd/f7/2f/fdf72f22d4149478c7fed478010eb3f2.jpg"),
        imgUrl:
            "https://seyler.ekstat.com/img/max/800/n/njAxoAZZuJfJuPNo-637136501555158846.jpg",
        likes: 125454,
        comments: 6),
    PostModel(
        userModel: UserModel(
            userName: "lily",
            imgUrl:
                "https://i.pinimg.com/originals/d2/d6/38/d2d638021f3ebfc1ba3e6526fee66f43.jpg"),
        imgUrl:
            "https://i.pinimg.com/originals/04/d6/6e/04d66ed006256df41b6e018707e5c927.png",
        likes: 7854,
        comments: 21),
  ];

  static List<String> barneyPosts = [
    "https://www.pinkvilla.com/files/styles/amp_metadata_content_image/public/barney_stinson.jpg",
    "https://i.pinimg.com/originals/76/a6/5f/76a65f802989a0d73ef9b2ac6e3be79a.jpg",
    "https://i.pinimg.com/736x/24/bd/58/24bd5819074206acd06abf495b4f7ab2.jpg",
    "https://i.pinimg.com/originals/d9/fe/51/d9fe51fb05cac59fe420750607bbf858.jpg",
    "https://i.pinimg.com/originals/0e/65/db/0e65db48e07f2939c86043bcd9c655bb.jpg",
    "https://i.pinimg.com/originals/c6/9e/8b/c69e8bcea403d4dcc74219f0c7f7b83c.png",
    "https://i.pinimg.com/736x/75/a1/d2/75a1d29e46866083d5ff0df39801bab1--bad-photos-himym.jpg",
    "https://www.pinkvilla.com/files/styles/amp_metadata_content_image/public/barney_stinson.jpg",
    "https://i.pinimg.com/originals/76/a6/5f/76a65f802989a0d73ef9b2ac6e3be79a.jpg",
    "https://i.pinimg.com/736x/24/bd/58/24bd5819074206acd06abf495b4f7ab2.jpg",
    "https://i.pinimg.com/originals/d9/fe/51/d9fe51fb05cac59fe420750607bbf858.jpg",
    "https://i.pinimg.com/originals/0e/65/db/0e65db48e07f2939c86043bcd9c655bb.jpg",
    "https://i.pinimg.com/originals/c6/9e/8b/c69e8bcea403d4dcc74219f0c7f7b83c.png",
    "https://i.pinimg.com/736x/75/a1/d2/75a1d29e46866083d5ff0df39801bab1--bad-photos-himym.jpg",
  ];
}
