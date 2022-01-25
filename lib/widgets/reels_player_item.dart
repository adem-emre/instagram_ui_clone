import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/models/reels_model.dart';
import 'package:instagram_clone/widgets/follow_button.dart';
import 'package:video_player/video_player.dart';

class ReelsPlayerItem extends StatefulWidget {
  final ReelsModel reelsModel;
  const ReelsPlayerItem({Key? key, required this.reelsModel}) : super(key: key);

  @override
  _ReelsPlayerItemState createState() => _ReelsPlayerItemState();
}

class _ReelsPlayerItemState extends State<ReelsPlayerItem> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController =
        VideoPlayerController.asset(widget.reelsModel.videoPath)
          ..addListener(() => setState(() {}))
          ..setLooping(true)
          ..initialize().then((_) => _videoPlayerController.play());
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _videoPlayerController.value.isInitialized
        ? Stack(
            children: [
              VideoPlayer(_videoPlayerController),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      videoInfo(),
                      sideBar(),
                    ],
                  )
                ],
              )
            ],
          )
        : const Center(
            child: CircularProgressIndicator(),
          );
  }

  Expanded videoInfo() {
    return Expanded(
        flex: 8,
        child: Container(
          padding: const EdgeInsets.only(left: 12),
          margin: const EdgeInsets.only(bottom: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 18,
                    backgroundImage: CachedNetworkImageProvider(
                        widget.reelsModel.user.imgUrl),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 9),
                    child: Text(widget.reelsModel.user.userName,
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                  const FollowButton(),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Text(
                  widget.reelsModel.videoDescription,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ));
  }

  Expanded sideBar() {
    return Expanded(
        flex: 2,
        child: SizedBox(
          height: 270,
          child: Column(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border),
                  color: Colors.white),
              Text(
                widget.reelsModel.likes.toString(),
                style: const TextStyle(color: Colors.white),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const FaIcon(FontAwesomeIcons.comment),
                  color: Colors.white),
              Text(
                widget.reelsModel.comments.toString(),
                style: const TextStyle(color: Colors.white),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const FaIcon(FontAwesomeIcons.paperPlane),
                  color: Colors.white),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert),
                  color: Colors.white),
              Container(
                width: 30,
                height: 30,
                padding: const EdgeInsets.all(2),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: CachedNetworkImage(
                      imageUrl: widget.reelsModel.user.imgUrl, fit: BoxFit.fill),
                ),
                decoration:
                    BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6)),
              )
            ],
          ),
        ));
  }
}
