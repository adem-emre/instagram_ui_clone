import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/lang/locale_keys.g.dart';
import 'package:instagram_clone/models/post_model.dart';
import 'package:instagram_clone/utils/constants/app_constant.dart';
import 'package:instagram_clone/views/language_settings_view.dart';
import 'package:instagram_clone/views/theme_settings_view.dart';
import 'package:instagram_clone/widgets/profile_info_item.dart';
import 'package:easy_localization/easy_localization.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("swarley"),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.add_box_outlined)),
          IconButton(
              onPressed: () {
                showSettings(context);
              },
              icon: const Icon(Icons.menu))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:  [
                  const CircleAvatar(
                    radius: 39,
                    backgroundImage: CachedNetworkImageProvider(AppConstant.profilePic),
                  ),
                  ProfileInfoItem(quantity: 15, label: LocaleKeys.posts.tr()),
                  ProfileInfoItem(quantity: 600, label: LocaleKeys.followers.tr()),
                  ProfileInfoItem(quantity: 300, label: LocaleKeys.following.tr()),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 3, 0, 12),
              child: Text("Barney Stinson",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            const SizedBox(
              height: 30,
            ),
            GridView.builder(
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, mainAxisSpacing: 3, crossAxisSpacing: 3),
                itemCount: PostModel.barneyPosts.length,
                itemBuilder: (BuildContext context, int index) {
                  return CachedNetworkImage(
                    imageUrl: PostModel.barneyPosts[index],
                    fit: BoxFit.cover,
                  );
                }),
          ],
        ),
      ),
    );
  }

  Future<dynamic> showSettings(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        builder: (context) => Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Center(child: Container(height: 3,width: 27, color: Colors.grey) ,),
                ),
                ListTile(
                  leading: const Icon(Icons.palette_outlined),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ThemeSettingsView()));
                  },
                  title: Text(LocaleKeys.theme.tr()),
                ),
                ListTile(
                  leading: const Icon(Icons.language),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const LanguageSettingsView()));
                  },
                  title: Text(LocaleKeys.language.tr()),
                ),
              ],
            ));
  }
}
