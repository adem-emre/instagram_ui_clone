import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/lang/locale_keys.g.dart';
import 'package:instagram_clone/models/post_model.dart';
import 'package:instagram_clone/utils/constants/app_constant.dart';
import 'package:instagram_clone/utils/device_size_config.dart';

class PostItem extends StatelessWidget {
  final PostModel postModel;
  const PostItem({
    Key? key,
    required this.postModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 21),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 8, 8, 8),
            child: Row(
              children:  [
                CircleAvatar(
                  radius: 18,
                    backgroundImage:
                        CachedNetworkImageProvider(postModel.userModel.imgUrl)),
                 Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    postModel.userModel.userName,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const Spacer(),
                const Icon(Icons.more_vert)
              ],
            ),
          ),
          CachedNetworkImage(
            imageUrl: postModel.imgUrl,
            height: DeviceSizeConfig.screenHeight / 2,
            width: DeviceSizeConfig.screenWidth,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.favorite_border)),
                IconButton(
                    onPressed: () {},
                    icon: const FaIcon(FontAwesomeIcons.comment)),
                IconButton(
                    onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.paperPlane)),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.bookmark_border_sharp)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Text(
              "${postModel.likes} " + 'like'.tr(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 6, 0, 0),
            child: Text(
              LocaleKeys.comment.tr(args: [postModel.comments.toString()]),
              style: const TextStyle(color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 9, 0, 0),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 15,
                  backgroundImage:
                        CachedNetworkImageProvider(AppConstant.profilePic)
                ),
                const SizedBox(width: 9,),
                Text(LocaleKeys.add_comment.tr(),style: const TextStyle(color: Colors.grey),)
              ],
            )
          ),
        ],
      ),
    );
  }
}
