import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nest_balance/src/core/core.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 6.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'NestBalance',
                  style: GoogleFonts.langar(
                    color: Colors.white,
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                PlayButtom(
                  text: 'PLAY',
                  onTap: () {},
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FavoriteAndMusicButtom(
                      icon: 'assets/svg/favorite.svg',
                    ),
                    FavoriteAndMusicButtom(
                      icon: 'assets/svg/music.svg',
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
