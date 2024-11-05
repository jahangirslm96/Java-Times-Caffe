import 'package:flutter/material.dart';
import 'package:show_up_animation/show_up_animation.dart';

class ShowUpAni extends StatelessWidget {
  const ShowUpAni({Key? key,required this.child_widget,required this.duration,required this.direction}) : super(key: key);


  final Widget child_widget;
  final Duration duration;
  final Direction direction;


  @override
  Widget build(BuildContext context) {
    return ShowUpAnimation(
        delayStart: duration,
        animationDuration: duration,
        curve: Curves.fastLinearToSlowEaseIn,
        direction: direction,
        offset: 0.5,
        child: child_widget);
  }
}
