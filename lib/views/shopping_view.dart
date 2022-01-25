
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/lang/locale_keys.g.dart';
import 'package:instagram_clone/models/product_model.dart';
import 'package:instagram_clone/widgets/search_bar.dart';
import 'package:easy_localization/easy_localization.dart';

class ShoppingView extends StatelessWidget {
  const ShoppingView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text(LocaleKeys.shop.tr()),),
      body: ListView(
        children: [
          const Padding(
            padding:  EdgeInsets.fromLTRB(15, 12, 15, 0),
            child:  SearchBar(),
          ),
          const SizedBox(height: 9,),
           GridView.builder(
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisSpacing: 3, crossAxisSpacing: 3),
                itemCount: ProductModel.products.length,
                itemBuilder: (BuildContext context, int index) {
                  return CachedNetworkImage(
                    imageUrl: ProductModel.products[index].imgUrl,
                    fit: BoxFit.cover,
                  );
                }),
        ],
      ),
      
    );
  }
}