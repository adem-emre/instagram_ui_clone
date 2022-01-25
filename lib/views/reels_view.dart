import 'package:flutter/material.dart';
import 'package:instagram_clone/models/reels_model.dart';
import 'package:instagram_clone/widgets/reels_player_item.dart';

class ReelsView extends StatelessWidget {
const ReelsView({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          "Reels",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt_outlined, color: Colors.white))
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: ReelsModel.reelsList.length,
          itemBuilder: (context, index) {
            return ReelsPlayerItem(reelsModel: ReelsModel.reelsList[index]);
          }),
    );
  }
}
