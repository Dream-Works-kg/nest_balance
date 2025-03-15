import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PlayButtom extends StatelessWidget {
  final Function()? onTap;
  final String? text;
  const PlayButtom({super.key, this.onTap, this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(children: [
        Align(
          alignment: Alignment.topCenter,
          child: SvgPicture.asset(
            'assets/svg/play_buttom.svg',
          ),
        ),
        Positioned(
          top: 5.sp,
          left: 47.sp,
          child: Text(
            text ?? '',
            style: GoogleFonts.pixelifySans(
              color: Colors.white,
              fontSize: 25.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        )
      ]),
    );
  }
}
