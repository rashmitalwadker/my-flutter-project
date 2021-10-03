import 'package:flutter/material.dart';
class BgImage extends StatelessWidget {
  const BgImage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/1.jpg',
    fit:BoxFit.cover,
    color:Colors.grey.withOpacity(0.4),
    colorBlendMode:BlendMode.darken,  
    );
  }

}