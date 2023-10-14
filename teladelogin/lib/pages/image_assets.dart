import 'package:flutter/material.dart';
import 'package:meuprimeiroapp/shared/app_images.dart';

class ImageAssetsPage extends StatefulWidget {
  const ImageAssetsPage({super.key});

  @override
  State<ImageAssetsPage> createState() => _ImageAssetsPageState();
}

class _ImageAssetsPageState extends State<ImageAssetsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(AppImages.image1,
        height: 50,),
        Image.asset(AppImages.image2,
        height: 50,),
        Image.asset(AppImages.image3,
        height: 50,)
      ],
    );
  }
}