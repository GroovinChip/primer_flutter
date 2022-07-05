import 'package:flutter/painting.dart';

/// {@template scaleColors}
/// Avoid referencing scale variables directly when building UI that needs to
/// adapt to different color themes. Instead, use the functional color variables
/// found in `/src/colors/functional_colors.dart`. In rare cases, you may need
/// to use scale variables to define custom functional variables in your
/// application.
///
/// Reference: https://primer.style/primitives/colors#scale-variables
/// {@endtemplate}
class ScaleColors {
  static const black = Color(0xff1b1f24);
  static const gray0 = Color(0xfff6f8fa);
  static const gray1 = Color(0xffeaeef2);
  static const gray2 = Color(0xffd0d7de);
  static const gray3 = Color(0xffafb8c1);
  static const gray4 = Color(0xff8c959f);
  static const gray5 = Color(0xff6e7781);
  static const gray6 = Color(0xff57606a);
  static const gray7 = Color(0xff424a53);
  static const gray8 = Color(0xff32383f);
  static const gray9 = Color(0xff24292f);

  static const white = Color(0xffffffff);
  static const blue0 = Color(0xffddf4ff);
  static const blue1 = Color(0xffb6e3ff);
  static const blue2 = Color(0xff80ccff);
  static const blue3 = Color(0xff54aeff);
  static const blue4 = Color(0xff218bff);
  static const blue5 = Color(0xff0969da);
  static const blue6 = Color(0xff0550ae);
  static const blue7 = Color(0xff033d8b);
  static const blue8 = Color(0xff0a3069);
  static const blue9 = Color(0xff002155);

  static const green0 = Color(0xffdafbe1);
  static const green1 = Color(0xffaceebb);
  static const green2 = Color(0xff6fdd8b);
  static const green3 = Color(0xff4ac26b);
  static const green4 = Color(0xff2da44e);
  static const green5 = Color(0xff1a7f37);
  static const green6 = Color(0xff116329);
  static const green7 = Color(0xff044f1e);
  static const green8 = Color(0xff003d16);
  static const green9 = Color(0xff002d11);

  static const yellow0 = Color(0xfffff8c5);
  static const yellow1 = Color(0xfffae17d);
  static const yellow2 = Color(0xffeac54f);
  static const yellow3 = Color(0xffd4a72c);
  static const yellow4 = Color(0xffbf8700);
  static const yellow5 = Color(0xff9a6700);
  static const yellow6 = Color(0xff7d4e00);
  static const yellow7 = Color(0xff633c01);
  static const yellow8 = Color(0xff4d2d00);
  static const yellow9 = Color(0xff3b2300);

  static const orange0 = Color(0xfffff1e5);
  static const orange1 = Color(0xffffd8b5);
  static const orange2 = Color(0xffffb77c);
  static const orange3 = Color(0xfffb8f44);
  static const orange4 = Color(0xffe16f24);
  static const orange5 = Color(0xffbc4c00);
  static const orange6 = Color(0xff953800);
  static const orange7 = Color(0xff762c00);
  static const orange8 = Color(0xff5c2200);
  static const orange9 = Color(0xff471700);

  static const red0 = Color(0xffFFEBE9);
  static const red1 = Color(0xffffcecb);
  static const red2 = Color(0xffffaba8);
  static const red3 = Color(0xffff8182);
  static const red4 = Color(0xfffa4549);
  static const red5 = Color(0xffcf222e);
  static const red6 = Color(0xffa40e26);
  static const red7 = Color(0xff82071e);
  static const red8 = Color(0xff660018);
  static const red9 = Color(0xff4c0014);

  static const purple0 = Color(0xfffbefff);
  static const purple1 = Color(0xffecd8ff);
  static const purple2 = Color(0xffd8b9ff);
  static const purple3 = Color(0xffc297ff);
  static const purple4 = Color(0xffa475f9);
  static const purple5 = Color(0xff8250df);
  static const purple6 = Color(0xff6639ba);
  static const purple7 = Color(0xff512a97);
  static const purple8 = Color(0xff3e1f79);
  static const purple9 = Color(0xff2e1461);

  static const pink0 = Color(0xffffeff7);
  static const pink1 = Color(0xffffd3eb);
  static const pink2 = Color(0xffffadda);
  static const pink3 = Color(0xffff80c8);
  static const pink4 = Color(0xffe85aad);
  static const pink5 = Color(0xffbf3989);
  static const pink6 = Color(0xff99286e);
  static const pink7 = Color(0xff772057);
  static const pink8 = Color(0xff611347);
  static const pink9 = Color(0xff4d0336);

  static const coral0 = Color(0xffFFF0EB);
  static const coral1 = Color(0xffFFD6CC);
  static const coral2 = Color(0xffFFB4A1);
  static const coral3 = Color(0xffFD8C73);
  static const coral4 = Color(0xffEC6547);
  static const coral5 = Color(0xffC4432B);
  static const coral6 = Color(0xff9E2F1C);
  static const coral7 = Color(0xff801F0F);
  static const coral8 = Color(0xff691105);
  static const coral9 = Color(0xff510901);

  static Color lighten(Color color, double lightness) {
    return HSLColor.fromColor(color).withLightness(lightness).toColor();
  }
}
