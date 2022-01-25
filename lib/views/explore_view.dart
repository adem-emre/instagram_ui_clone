import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram_clone/widgets/search_bar.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
      floatHeaderSlivers: true,
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          const SliverAppBar(          
            snap: true,
            floating: true,
            title: SearchBar(),
          )
        ];
      },
      body: buildExploreGrid(),
    ));
  }

  StaggeredGridView buildExploreGrid() {
    return StaggeredGridView.countBuilder(
      padding: const EdgeInsets.only(top: 0),
        itemCount: 30,
        crossAxisCount: 3,
        mainAxisSpacing: 3,
        crossAxisSpacing: 3,
        itemBuilder: (context, index) {
          return Image.network(
            "https://picsum.photos/200/300?random=$index",
            fit: BoxFit.cover,
            loadingBuilder: (BuildContext context, Widget child,
                    ImageChunkEvent? loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Container(color: Colors.grey,);
                },
          );
        },
        staggeredTileBuilder: (index) {
          return ((index - 13) % 22 == 0 || index % 22 == 0)
              ? const StaggeredTile.count(1, 2)
              : const StaggeredTile.count(1, 1);
        });
  }
}

