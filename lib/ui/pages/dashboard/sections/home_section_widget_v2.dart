import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/themes/themes.dart';
import 'package:portfolio/ui/model/home_section_ui.dart';
import 'package:portfolio/utils/constant.dart';

class HomeSectionWidgetV2 extends StatelessWidget {
  final HomeSectionUi section;
  final double height;
  final double paddingHorizontal;

  const HomeSectionWidgetV2({
    required this.section,
    required this.height,
    required this.paddingHorizontal,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.symmetric(vertical: 16, horizontal: paddingHorizontal),
      constraints:
          BoxConstraints(minHeight: height, maxWidth: Const.maxWidthSection),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: height,
            width: 448,
            child: Column(
              children: [
                Expanded(child: Container()),
                Image.asset(Assets.imgFakhryHello),
              ],
            ),
          ),
          const Expanded(child: IntroductionSection()),
          SizedBox(
            height: height,
            child: Column(
              children: [
                Expanded(child: Container()),
                SocmedSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class IntroductionSection extends StatelessWidget {
  const IntroductionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 100,
              height: 8,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            SizedBox(width: 16),
            Text("Hello!", style: Theme.of(context).textTheme.headlineSmall),
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Text(
              "I'm ",
              style: TextStyles.extraBold60ptStix(),
            ),
            Text(
              "Fakhry Mubarak",
              style: TextStyles.extraBold60ptStix(AppColors.primary).copyWith(
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.primary),
            ),
            Text(
              ",",
              style: TextStyles.extraBold60ptStix(),
            ),
          ],
        ),
        Text(
          "a Software Engineer",
          style: TextStyles.extraBold60ptStix(),
        ),
        SizedBox(height: 32),
        Row(
          children: [
            Text(
              "Specialized on ",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text(
              "Mobile Apps Development",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(color: AppColors.primary),
            ),
          ],
        ),
        SizedBox(height: 32),
        Row(
          children: [
            ElevatedButton(
              onPressed: () => {},
              child: Text("Download CV!"),
            ),
            SizedBox(width: 16),
            ElevatedButton(
              onPressed: () => {},
              child: Text("Hire Me!"),
            ),
          ],
        ),
      ],
    );
  }
}

class SocmedSection extends StatelessWidget {
  const SocmedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildSocmedIcon(Assets.icAndroidDark),
        SizedBox(height: 16),
        _buildSocmedIcon(Assets.icKotlinDark),
        SizedBox(height: 16),
        _buildSocmedIcon(Assets.icJavaDark),
        SizedBox(height: 16),
        _buildSocmedIcon(Assets.icFlutterDark),
        SizedBox(height: 16),
        Container(
          width: 8,
          height: 100,
          margin: EdgeInsets.only(bottom: 64),
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ],
    );
  }

  Widget _buildSocmedIcon(String assetPath) {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.rotationZ(270 * 3.1415927 / 180),
      child: SvgPicture.asset(
        assetPath,
        width: 40,
        height: 40,
      ),
    );
  }
}
