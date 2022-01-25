import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/models/post_model.dart';
import 'package:instagram_clone/models/user_model.dart';
import 'package:instagram_clone/utils/constants/font_const.dart';
import 'package:instagram_clone/widgets/post_item.dart';
import 'package:instagram_clone/widgets/story_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint(context.locale.toString());
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Instagram",
          style: TextStyle(fontFamily: FontConsts.titleFont),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.add_box_outlined)),
          IconButton(onPressed: () {


          }, icon: const Icon(Icons.favorite_border)),
          IconButton(
              onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.paperPlane)),
        ],
      ),
      body: ListView(
        children: [
          buildStories(),
          buildPosts(),
        ],
      ),
    );
  }

  SizedBox buildStories() {
    return SizedBox(
      height: 114,
      child: ScrollConfiguration(
        behavior: const ScrollBehavior().copyWith(overscroll: false),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: UserModel.stories.length,
            itemBuilder: (context, index) {
              return StoryItem(
                userModel: UserModel.stories[index],
              );
            }),
      ),
    );
  }

  ListView buildPosts() {
    return ListView.builder(
        physics: const ClampingScrollPhysics(),
        shrinkWrap: true,
        itemCount: PostModel.posts.length,
        itemBuilder: (context, index) {
          return PostItem(
            postModel: PostModel.posts[index],
          );
        });
  }
}
