import 'package:flutter/material.dart';
import '../responsive/size_config.dart';

class AuthUi extends StatelessWidget {
  final Widget child;

  const AuthUi({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsets.all(30),
      constraints: const BoxConstraints(
        minWidth: 780,
        maxWidth: 800,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      height: 580,
      width: 800,
      child: Row(
        children: [
          if(SizeConfig.screenWidth! > 800)
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                  image: DecorationImage(image: AssetImage("assets/images/auth.png",),fit: BoxFit.cover,)
                  ),
                ),
              ),

          child,
        ],
      ),
    );
  }
}