import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:instagram_clone/lang/locale_keys.g.dart';

class FollowButton extends StatelessWidget {
  const FollowButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: OutlinedButton(
        onPressed: () {},
        child: Text(LocaleKeys.follow.tr()),
        style: OutlinedButton.styleFrom(
          primary: Colors.white,
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6)
          ),
          side: const BorderSide(
              color: Colors.white),
        ),
      ),
    );
  }
}