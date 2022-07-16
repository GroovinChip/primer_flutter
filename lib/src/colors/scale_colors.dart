import 'package:flutter/painting.dart';

// TODO: high contrast, colorblind, tritanopia, & dimmed color scales - https://primer.style/primitives/colors#scale-variables

Color lighten(Color color, double lightness) {
  return HSLColor.fromColor(color).withLightness(lightness).toColor();
}

/// {@template scaleColorsLight}
/// Scale colors appropriate for a light theme.
/// {@endtemplate}
///
/// {@template scaleColors}
/// Avoid referencing scale variables directly when building UI that needs to
/// adapt to different color themes. Instead, use the functional color variables
/// found in `/src/colors/functional_colors.dart`. In rare cases, you may need
/// to use scale variables to define custom functional variables in your
/// application.
///
/// Reference: https://primer.style/primitives/colors#scale-variables
/// {@endtemplate}
class ScaleColorsLight {
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
}

/// {@template scaleColorsDark}
/// Scale colors appropriate for a dark theme.
/// {@endtemplate}
///
/// {@macro scaleColors}
class ScaleColorsDark {
  static const black = Color(0xff010409);
  static const gray0 = Color(0xfff0f6fc);
  static const gray1 = Color(0xffc9d1d9);
  static const gray2 = Color(0xffb1bac4);
  static const gray3 = Color(0xff8b949e);
  static const gray4 = Color(0xff6e7681);
  static const gray5 = Color(0xff484f58);
  static const gray6 = Color(0xff30363d);
  static const gray7 = Color(0xff21262d);
  static const gray8 = Color(0xff161b22);
  static const gray9 = Color(0xff0d1117);

  static const white = Color(0xffffffff);
  static const blue0 = Color(0xffcae8ff);
  static const blue1 = Color(0xffa5d6ff);
  static const blue2 = Color(0xff79c0ff);
  static const blue3 = Color(0xff58a6ff);
  static const blue4 = Color(0xff388bfd);
  static const blue5 = Color(0xff1f6feb);
  static const blue6 = Color(0xff1158c7);
  static const blue7 = Color(0xff0d419d);
  static const blue8 = Color(0xff0c2d6b);
  static const blue9 = Color(0xff051d4d);

  static const green0 = Color(0xffaff5b4);
  static const green1 = Color(0xff7ee787);
  static const green2 = Color(0xff56d364);
  static const green3 = Color(0xff3fb950);
  static const green4 = Color(0xff2ea043);
  static const green5 = Color(0xff238636);
  static const green6 = Color(0xff196c2e);
  static const green7 = Color(0xff0f5323);
  static const green8 = Color(0xff033a16);
  static const green9 = Color(0xff04260f);

  static const yellow0 = Color(0xfff8e3a1);
  static const yellow1 = Color(0xfff2cc60);
  static const yellow2 = Color(0xffe3b341);
  static const yellow3 = Color(0xffd29922);
  static const yellow4 = Color(0xffbb8009);
  static const yellow5 = Color(0xff9e6a03);
  static const yellow6 = Color(0xff845306);
  static const yellow7 = Color(0xff693e00);
  static const yellow8 = Color(0xff4b2900);
  static const yellow9 = Color(0xff341a00);

  static const orange0 = Color(0xffffdfb6);
  static const orange1 = Color(0xffffc680);
  static const orange2 = Color(0xffffa657);
  static const orange3 = Color(0xfff0883e);
  static const orange4 = Color(0xffdb6d28);
  static const orange5 = Color(0xffbd561d);
  static const orange6 = Color(0xff9b4215);
  static const orange7 = Color(0xff762d0a);
  static const orange8 = Color(0xff5a1e02);
  static const orange9 = Color(0xff3d1300);

  static const red0 = Color(0xffffdcd7);
  static const red1 = Color(0xffffc1ba);
  static const red2 = Color(0xffffa198);
  static const red3 = Color(0xffff7b72);
  static const red4 = Color(0xfff85149);
  static const red5 = Color(0xffda3633);
  static const red6 = Color(0xffb62324);
  static const red7 = Color(0xff8e1519);
  static const red8 = Color(0xff67060c);
  static const red9 = Color(0xff490202);

  static const purple0 = Color(0xffeddeff);
  static const purple1 = Color(0xffe2c5ff);
  static const purple2 = Color(0xffd2a8ff);
  static const purple3 = Color(0xffbc8cff);
  static const purple4 = Color(0xffa371f7);
  static const purple5 = Color(0xff8957e5);
  static const purple6 = Color(0xff6e40c9);
  static const purple7 = Color(0xff553098);
  static const purple8 = Color(0xff3c1e70);
  static const purple9 = Color(0xff271052);

  static const pink0 = Color(0xffffdaec);
  static const pink1 = Color(0xffffbedd);
  static const pink2 = Color(0xffff9bce);
  static const pink3 = Color(0xfff778ba);
  static const pink4 = Color(0xffdb61a2);
  static const pink5 = Color(0xffbf4b8a);
  static const pink6 = Color(0xff9e3670);
  static const pink7 = Color(0xff7d2457);
  static const pink8 = Color(0xff5e103e);
  static const pink9 = Color(0xff42062a);

  static const coral0 = Color(0xffFFDDD2);
  static const coral1 = Color(0xffFFC2B2);
  static const coral2 = Color(0xffFFA28B);
  static const coral3 = Color(0xffF78166);
  static const coral4 = Color(0xffEA6045);
  static const coral5 = Color(0xffCF462D);
  static const coral6 = Color(0xffAC3220);
  static const coral7 = Color(0xff872012);
  static const coral8 = Color(0xff640D04);
  static const coral9 = Color(0xff460701);
}
