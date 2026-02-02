import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/asset_path.dart';

class ScreenBackground extends StatelessWidget {
  const ScreenBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(AssetPaths.backgroundSVG,
          height:double.maxFinite,
          width:double.maxFinite,
        ),

        SafeArea(child: child)
        // Center(child: SvgPicture.asset(AssetPaths.logoSVG,
        //   height: 50,
        // )),
      ],
    );
  }
}

