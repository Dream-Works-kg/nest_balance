import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class FavoriteAndMusicButtom extends StatelessWidget {
  final Function()? onTap;
  final String icon;
  const FavoriteAndMusicButtom({
    super.key,
    this.onTap,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 10.h,
        width: 30.w,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: SvgPicture.asset(
                'assets/svg/favorite_and_music_icon.svg',
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: SvgPicture.asset(
                icon,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
