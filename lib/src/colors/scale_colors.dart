import 'package:flutter/painting.dart';

// TODO: high contrast, colorblind, tritanopia, & dimmed color scales - https://primer.style/primitives/colors#scale-variables

/// Adds lightness to a color.
///
/// See https://color2k.com/#lighten
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

/// {@template scaleColorsHighContrastLight}
/// Scale colors appropriate for a high-contrast light theme.
/// {@endtemplate}
///
/// {@macro scaleColors}
class ScaleColorsHighContrastLight {
  static const black = Color(0xff010409);
  static const gray0 = Color(0xffFFFFFF);
  static const gray1 = Color(0xffE7ECF0);
  static const gray2 = Color(0xffCED5DC);
  static const gray3 = Color(0xffACB6C0);
  static const gray4 = Color(0xff88929D);
  static const gray5 = Color(0xff66707B);
  static const gray6 = Color(0xff4B535D);
  static const gray7 = Color(0xff343B43);
  static const gray8 = Color(0xff20252C);
  static const gray9 = Color(0xff0E1116);

  static const white = Color(0xffffffff);
  static const blue0 = Color(0xffdff7ff);
  static const blue1 = Color(0xff9cd7ff);
  static const blue2 = Color(0xff67b3fd);
  static const blue3 = Color(0xff368cf9);
  static const blue4 = Color(0xff1168e3);
  static const blue5 = Color(0xff0349b4);
  static const blue6 = Color(0xff023b95);
  static const blue7 = Color(0xff022f7a);
  static const blue8 = Color(0xff032563);
  static const blue9 = Color(0xff021a4a);

  static const green0 = Color(0xffd2fedb);
  static const green1 = Color(0xff82e596);
  static const green2 = Color(0xff43c663);
  static const green3 = Color(0xff26a148);
  static const green4 = Color(0xff117f32);
  static const green5 = Color(0xff055d20);
  static const green6 = Color(0xff024c1a);
  static const green7 = Color(0xff013d14);
  static const green8 = Color(0xff003110);
  static const green9 = Color(0xff00230b);

  static const yellow0 = Color(0xfffcf7be);
  static const yellow1 = Color(0xfff0ce53);
  static const yellow2 = Color(0xffd5a824);
  static const yellow3 = Color(0xffb58407);
  static const yellow4 = Color(0xff956400);
  static const yellow5 = Color(0xff744500);
  static const yellow6 = Color(0xff603700);
  static const yellow7 = Color(0xff4e2c00);
  static const yellow8 = Color(0xff3f2200);
  static const yellow9 = Color(0xff2e1800);

  static const orange0 = Color(0xfffff2d5);
  static const orange1 = Color(0xffffc67b);
  static const orange2 = Color(0xfff99636);
  static const orange3 = Color(0xffdc6d1a);
  static const orange4 = Color(0xffb45105);
  static const orange5 = Color(0xff873800);
  static const orange6 = Color(0xff702c00);
  static const orange7 = Color(0xff5b2300);
  static const orange8 = Color(0xff491b00);
  static const orange9 = Color(0xff361200);

  static const red0 = Color(0xfffff0ee);
  static const red1 = Color(0xffffc1bc);
  static const red2 = Color(0xffff8e8a);
  static const red3 = Color(0xffee5a5d);
  static const red4 = Color(0xffd5232c);
  static const red5 = Color(0xffa0111f);
  static const red6 = Color(0xff86061d);
  static const red7 = Color(0xff6e011a);
  static const red8 = Color(0xff5a0016);
  static const red9 = Color(0xff430011);

  static const purple0 = Color(0xfffaf0fe);
  static const purple1 = Color(0xffe0c5ff);
  static const purple2 = Color(0xffc49bff);
  static const purple3 = Color(0xffa371f7);
  static const purple4 = Color(0xff844ae7);
  static const purple5 = Color(0xff622cbc);
  static const purple6 = Color(0xff512598);
  static const purple7 = Color(0xff411d7b);
  static const purple8 = Color(0xff341763);
  static const purple9 = Color(0xff260f49);

  static const pink0 = Color(0xfffeeff7);
  static const pink1 = Color(0xffffbde0);
  static const pink2 = Color(0xfffc87ca);
  static const pink3 = Color(0xffed4baf);
  static const pink4 = Color(0xffc9248e);
  static const pink5 = Color(0xff971368);
  static const pink6 = Color(0xff7d0c57);
  static const pink7 = Color(0xff660847);
  static const pink8 = Color(0xff53043a);
  static const pink9 = Color(0xff3e022b);

  static const coral0 = Color(0xfffff0ed);
  static const coral1 = Color(0xffffc2b6);
  static const coral2 = Color(0xffff8f7e);
  static const coral3 = Color(0xffef5b48);
  static const coral4 = Color(0xffcd3425);
  static const coral5 = Color(0xff9f1710);
  static const coral6 = Color(0xff870706);
  static const coral7 = Color(0xff6f0107);
  static const coral8 = Color(0xff5b0002);
  static const coral9 = Color(0xff430200);
}

/// {@template scaleColorsHighContrastDark}
/// Scale colors appropriate for a high-contrast dark theme.
/// {@endtemplate}
///
/// {@macro scaleColors}
class ScaleColorsHighContrastDark {
  static const black = Color(0xff010409);
  static const gray0 = Color(0xffFFFFFF);
  static const gray1 = Color(0xfff0f3f6);
  static const gray2 = Color(0xffd9dee3);
  static const gray3 = Color(0xffbdc4cc);
  static const gray4 = Color(0xff9ea7b3);
  static const gray5 = Color(0xff7a828e);
  static const gray6 = Color(0xff525964);
  static const gray7 = Color(0xff272b33);
  static const gray8 = Color(0xff272b33);
  static const gray9 = Color(0xff0a0c10);

  static const white = Color(0xffffffff);
  static const blue0 = Color(0xffcaeaff);
  static const blue1 = Color(0xffaddcff);
  static const blue2 = Color(0xff91cbff);
  static const blue3 = Color(0xff71b7ff);
  static const blue4 = Color(0xff409eff);
  static const blue5 = Color(0xff409eff);
  static const blue6 = Color(0xff318bf8);
  static const blue7 = Color(0xff2672f3);
  static const blue8 = Color(0xff1e60d5);
  static const blue9 = Color(0xff194fb1);

  static const green0 = Color(0xffacf7b6);
  static const green1 = Color(0xff72f088);
  static const green2 = Color(0xff4ae168);
  static const green3 = Color(0xff26cd4d);
  static const green4 = Color(0xff09b43a);
  static const green5 = Color(0xff09b43a);
  static const green6 = Color(0xff02a232);
  static const green7 = Color(0xff008c2c);
  static const green8 = Color(0xff007728);
  static const green9 = Color(0xff006222);

  static const yellow0 = Color(0xfffbe59e);
  static const yellow1 = Color(0xfffbd669);
  static const yellow2 = Color(0xfff7c843);
  static const yellow3 = Color(0xfff0b72f);
  static const yellow4 = Color(0xffe09b13);
  static const yellow5 = Color(0xffe09b13);
  static const yellow6 = Color(0xffc88508);
  static const yellow7 = Color(0xffae7104);
  static const yellow8 = Color(0xff945d02);
  static const yellow9 = Color(0xff7b4900);

  static const orange0 = Color(0xffffe1b4);
  static const orange1 = Color(0xffffcf86);
  static const orange2 = Color(0xffffb757);
  static const orange3 = Color(0xfffe9a2d);
  static const orange4 = Color(0xffe7811d);
  static const orange5 = Color(0xffe7811d);
  static const orange6 = Color(0xffd57014);
  static const orange7 = Color(0xffbf5e0a);
  static const orange8 = Color(0xffa74c00);
  static const orange9 = Color(0xff8f3c00);

  static const red0 = Color(0xffffdedb);
  static const red1 = Color(0xffffc9c7);
  static const red2 = Color(0xffffb1af);
  static const red3 = Color(0xffff9492);
  static const red4 = Color(0xffff6a69);
  static const red5 = Color(0xffff6a69);
  static const red6 = Color(0xffff4445);
  static const red7 = Color(0xffe82a2f);
  static const red8 = Color(0xffcc1421);
  static const red9 = Color(0xffad0116);

  static const purple0 = Color(0xfff0dfff);
  static const purple1 = Color(0xffe6ccff);
  static const purple2 = Color(0xffdbb7ff);
  static const purple3 = Color(0xffcb9eff);
  static const purple4 = Color(0xffb780ff);
  static const purple5 = Color(0xffb780ff);
  static const purple6 = Color(0xffa66bff);
  static const purple7 = Color(0xff954ffd);
  static const purple8 = Color(0xff8031f7);
  static const purple9 = Color(0xff6921d7);

  static const pink0 = Color(0xffffdceb);
  static const pink1 = Color(0xffffc7e1);
  static const pink2 = Color(0xffffadd4);
  static const pink3 = Color(0xffff8dc7);
  static const pink4 = Color(0xffef6eb1);
  static const pink5 = Color(0xffef6eb1);
  static const pink6 = Color(0xffe456a3);
  static const pink7 = Color(0xffd23d91);
  static const pink8 = Color(0xffb72c7d);
  static const pink9 = Color(0xff9c1d6a);

  static const coral0 = Color(0xffFFDED4);
  static const coral1 = Color(0xffFFCBB9);
  static const coral2 = Color(0xffFFB39B);
  static const coral3 = Color(0xffFF967D);
  static const coral4 = Color(0xffFC704F);
  static const coral5 = Color(0xffFC704F);
  static const coral6 = Color(0xffF75133);
  static const coral7 = Color(0xffE03B21);
  static const coral8 = Color(0xffC62612);
  static const coral9 = Color(0xffA91500);
}

/// {@template scaleColorsColorblindLight}
/// Scale colors appropriate for a colorblind light theme.
/// {@endtemplate}
///
/// {@macro scaleColors}
class ScaleColorsColorblindLight {
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

  static const green0 = Color(0xffddf4ff);
  static const green1 = Color(0xffb6e3ff);
  static const green2 = Color(0xff80ccff);
  static const green3 = Color(0xff54aeff);
  static const green4 = Color(0xff218bff);
  static const green5 = Color(0xff0969da);
  static const green6 = Color(0xff0550ae);
  static const green7 = Color(0xff033d8b);
  static const green8 = Color(0xff0a3069);
  static const green9 = Color(0xff002155);

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

  static const orange0 = Color(0xfffff5e8);
  static const orange1 = Color(0xffffddb0);
  static const orange2 = Color(0xffffbc6d);
  static const orange3 = Color(0xfff79939);
  static const orange4 = Color(0xffdd7815);
  static const orange5 = Color(0xffb35900);
  static const orange6 = Color(0xff8a4600);
  static const orange7 = Color(0xff6f3800);
  static const orange8 = Color(0xff572c00);
  static const orange9 = Color(0xff412000);

  static const red0 = Color(0xfffff5e8);
  static const red1 = Color(0xffffddb0);
  static const red2 = Color(0xffffbc6d);
  static const red3 = Color(0xfff79939);
  static const red4 = Color(0xffdd7815);
  static const red5 = Color(0xffb35900);
  static const red6 = Color(0xff8a4600);
  static const red7 = Color(0xff6f3800);
  static const red8 = Color(0xff572c00);
  static const red9 = Color(0xff412000);

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

/// {@template scaleColorsColorblindDark}
/// Scale colors appropriate for a colorblind dark theme.
/// {@endtemplate}
///
/// {@macro scaleColors}
class ScaleColorsColorblindDark {
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

  static const green0 = Color(0xffcae8ff);
  static const green1 = Color(0xffa5d6ff);
  static const green2 = Color(0xff79c0ff);
  static const green3 = Color(0xff58a6ff);
  static const green4 = Color(0xff388bfd);
  static const green5 = Color(0xff1f6feb);
  static const green6 = Color(0xff1158c7);
  static const green7 = Color(0xff0d419d);
  static const green8 = Color(0xff0c2d6b);
  static const green9 = Color(0xff051d4d);

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

  static const orange0 = Color(0xffffe2bb);
  static const orange1 = Color(0xffffc981);
  static const orange2 = Color(0xfffdac54);
  static const orange3 = Color(0xffec8e2c);
  static const orange4 = Color(0xffd47616);
  static const orange5 = Color(0xffb76100);
  static const orange6 = Color(0xff914d04);
  static const orange7 = Color(0xff6c3906);
  static const orange8 = Color(0xff4e2906);
  static const orange9 = Color(0xff331c04);

  static const red0 = Color(0xffffe2bb);
  static const red1 = Color(0xffffc981);
  static const red2 = Color(0xfffdac54);
  static const red3 = Color(0xffec8e2c);
  static const red4 = Color(0xffd47616);
  static const red5 = Color(0xffb76100);
  static const red6 = Color(0xff914d04);
  static const red7 = Color(0xff6c3906);
  static const red8 = Color(0xff4e2906);
  static const red9 = Color(0xff331c04);

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

/// {@template scaleColorsTritanopiaLight}
/// Scale colors appropriate for a light tritanopia theme.
/// {@endtemplate}
///
/// {@macro scaleColors}
class ScaleColorsTritanopiaLight {
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

  static const green0 = Color(0xffddf4ff);
  static const green1 = Color(0xffb6e3ff);
  static const green2 = Color(0xff80ccff);
  static const green3 = Color(0xff54aeff);
  static const green4 = Color(0xff218bff);
  static const green5 = Color(0xff0969da);
  static const green6 = Color(0xff0550ae);
  static const green7 = Color(0xff033d8b);
  static const green8 = Color(0xff0a3069);
  static const green9 = Color(0xff002155);

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

  static const orange0 = Color(0xffFFEBE9);
  static const orange1 = Color(0xffffcecb);
  static const orange2 = Color(0xffffaba8);
  static const orange3 = Color(0xffff8182);
  static const orange4 = Color(0xfffa4549);
  static const orange5 = Color(0xffcf222e);
  static const orange6 = Color(0xffa40e26);
  static const orange7 = Color(0xff82071e);
  static const orange8 = Color(0xff660018);
  static const orange9 = Color(0xff4c0014);

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

/// {@template scaleColorsTritanopiaDark}
/// Scale colors appropriate for a dark tritanopia theme.
/// {@endtemplate}
///
/// {@macro scaleColors}
class ScaleColorsTritanopiaDark {
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

  static const green0 = Color(0xffcae8ff);
  static const green1 = Color(0xffa5d6ff);
  static const green2 = Color(0xff79c0ff);
  static const green3 = Color(0xff58a6ff);
  static const green4 = Color(0xff388bfd);
  static const green5 = Color(0xff1f6feb);
  static const green6 = Color(0xff1158c7);
  static const green7 = Color(0xff0d419d);
  static const green8 = Color(0xff0c2d6b);
  static const green9 = Color(0xff051d4d);

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

  static const orange0 = Color(0xffffdcd7);
  static const orange1 = Color(0xffffc1ba);
  static const orange2 = Color(0xffffa198);
  static const orange3 = Color(0xffff7b72);
  static const orange4 = Color(0xfff85149);
  static const orange5 = Color(0xffda3633);
  static const orange6 = Color(0xffb62324);
  static const orange7 = Color(0xff8e1519);
  static const orange8 = Color(0xff67060c);
  static const orange9 = Color(0xff490202);

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

/// {@template scaleColorsTritanopiaDimmed}
/// Scale colors appropriate for a dark dimmed theme.
/// {@endtemplate}
///
/// {@macro scaleColors}
class ScaleColorsDimmed {
  static const black = Color(0xff1c2128);
  static const gray0 = Color(0xffcdd9e5);
  static const gray1 = Color(0xffadbac7);
  static const gray2 = Color(0xff909dab);
  static const gray3 = Color(0xff768390);
  static const gray4 = Color(0xff636e7b);
  static const gray5 = Color(0xff545d68);
  static const gray6 = Color(0xff444c56);
  static const gray7 = Color(0xff373e47);
  static const gray8 = Color(0xff2d333b);
  static const gray9 = Color(0xff22272e);

  static const white = Color(0xffcdd9e5);
  static const blue0 = Color(0xffc6e6ff);
  static const blue1 = Color(0xff96d0ff);
  static const blue2 = Color(0xff6cb6ff);
  static const blue3 = Color(0xff539bf5);
  static const blue4 = Color(0xff4184e4);
  static const blue5 = Color(0xff316dca);
  static const blue6 = Color(0xff255ab2);
  static const blue7 = Color(0xff1b4b91);
  static const blue8 = Color(0xff143d79);
  static const blue9 = Color(0xff0f2d5c);

  static const green0 = Color(0xffb4f1b4);
  static const green1 = Color(0xff8ddb8c);
  static const green2 = Color(0xff6bc46d);
  static const green3 = Color(0xff57ab5a);
  static const green4 = Color(0xff46954a);
  static const green5 = Color(0xff347d39);
  static const green6 = Color(0xff2b6a30);
  static const green7 = Color(0xff245829);
  static const green8 = Color(0xff1b4721);
  static const green9 = Color(0xff113417);

  static const yellow0 = Color(0xfffbe090);
  static const yellow1 = Color(0xffeac55f);
  static const yellow2 = Color(0xffdaaa3f);
  static const yellow3 = Color(0xffc69026);
  static const yellow4 = Color(0xffae7c14);
  static const yellow5 = Color(0xff966600);
  static const yellow6 = Color(0xff805400);
  static const yellow7 = Color(0xff6c4400);
  static const yellow8 = Color(0xff593600);
  static const yellow9 = Color(0xff452700);

  static const orange0 = Color(0xffffddb0);
  static const orange1 = Color(0xffffbc6f);
  static const orange2 = Color(0xfff69d50);
  static const orange3 = Color(0xffe0823d);
  static const orange4 = Color(0xffcc6b2c);
  static const orange5 = Color(0xffae5622);
  static const orange6 = Color(0xff94471b);
  static const orange7 = Color(0xff7f3913);
  static const orange8 = Color(0xff682d0f);
  static const orange9 = Color(0xff4d210c);

  static const red0 = Color(0xffffd8d3);
  static const red1 = Color(0xffffb8b0);
  static const red2 = Color(0xffff938a);
  static const red3 = Color(0xfff47067);
  static const red4 = Color(0xffe5534b);
  static const red5 = Color(0xffc93c37);
  static const red6 = Color(0xffad2e2c);
  static const red7 = Color(0xff922323);
  static const red8 = Color(0xff78191b);
  static const red9 = Color(0xff5D0F12);

  static const purple0 = Color(0xffeedcff);
  static const purple1 = Color(0xffdcbdfb);
  static const purple2 = Color(0xffdcbdfb);
  static const purple3 = Color(0xffb083f0);
  static const purple4 = Color(0xff986ee2);
  static const purple5 = Color(0xff8256d0);
  static const purple6 = Color(0xff6b44bc);
  static const purple7 = Color(0xff5936a2);
  static const purple8 = Color(0xff472c82);
  static const purple9 = Color(0xff352160);

  static const pink0 = Color(0xffffd7eb);
  static const pink1 = Color(0xffffb3d8);
  static const pink2 = Color(0xfffc8dc7);
  static const pink3 = Color(0xffe275ad);
  static const pink4 = Color(0xffc96198);
  static const pink5 = Color(0xffae4c82);
  static const pink6 = Color(0xff983b6e);
  static const pink7 = Color(0xff7e325a);
  static const pink8 = Color(0xff69264a);
  static const pink9 = Color(0xff551639);

  static const coral0 = Color(0xffFFDACF);
  static const coral1 = Color(0xffFFB9A5);
  static const coral2 = Color(0xffF79981);
  static const coral3 = Color(0xffEC775C);
  static const coral4 = Color(0xffDE5B41);
  static const coral5 = Color(0xffC2442D);
  static const coral6 = Color(0xffA93524);
  static const coral7 = Color(0xff8D291B);
  static const coral8 = Color(0xff771D13);
  static const coral9 = Color(0xff5D1008);
}
