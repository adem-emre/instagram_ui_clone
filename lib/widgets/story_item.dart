import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/models/user_model.dart';
import 'package:instagram_clone/utils/constants/color_constant.dart';

class StoryItem extends StatelessWidget {
  final UserModel userModel;
  const StoryItem({
    required this.userModel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
        margin: const EdgeInsets.symmetric(vertical: 9,horizontal: 6),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 75,
              height: 75,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: ColorConstant.storyGradient)),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                
                  decoration: BoxDecoration(
                      border: Border.all(color: Theme.of(context).appBarTheme.backgroundColor!, width: 3),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: CachedNetworkImageProvider(userModel.imgUrl),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              userModel.userName,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ));
  }
}
