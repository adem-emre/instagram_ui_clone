import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/constants/app_constant.dart';
import 'package:instagram_clone/utils/device_size_config.dart';
import 'package:instagram_clone/views/explore_view.dart';
import 'package:instagram_clone/views/home_view.dart';
import 'package:instagram_clone/views/profile_view.dart';
import 'package:instagram_clone/views/reels_view.dart';
import 'package:instagram_clone/views/shopping_view.dart';

class Instagram extends StatefulWidget {
  const Instagram({Key? key}) : super(key: key);

  @override
  _InstagramState createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  int _selectedIndex = 0;

  static List<Widget> pageList = [
    const HomeView(),
    const ExploreView(),
    const ReelsView(),
    const ShoppingView(),
    const ProfileView()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    DeviceSizeConfig().init(context);
    return Scaffold(
      body: pageList.elementAt(_selectedIndex),
      bottomNavigationBar: buildBottomNavigatonBar(),
    );
  }

  BottomNavigationBar buildBottomNavigatonBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
        BottomNavigationBarItem(
            icon: Icon(Icons.ondemand_video_rounded), label: ""),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined), label: ""),
        BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 15,
              backgroundImage:
                  CachedNetworkImageProvider(AppConstant.profilePic),
            ),
            label: ""),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }
}
