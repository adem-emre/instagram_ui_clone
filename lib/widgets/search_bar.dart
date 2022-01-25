import 'package:flutter/material.dart';
import 'package:instagram_clone/lang/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 33,
      child: TextField(
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(color: Colors.white)),
            prefixIcon: const Icon(
              Icons.search,
            ),
            hintText: LocaleKeys.search.tr(),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(color: Colors.transparent)),
            isDense: true,
            contentPadding: const EdgeInsets.all(8)),
      ),
    );
  }
}
