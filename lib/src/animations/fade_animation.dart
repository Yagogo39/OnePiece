import 'package:flutter/material.dart';

class FadeAnimation extends StatelessWidget {
  const FadeAnimation({
    super.key,
    required this.child,
    this.begin=0, 
    this.end=1, 
    this.intervalStart=0,
    this.intervaleEnd=1,
    this.duracion=const Duration(milliseconds: 3000),
    this.curve= Curves.fastOutSlowIn});

  final double begin;
  final double end;
  final Duration duracion;
  final double intervalStart;
  final double intervaleEnd;
  final Curve curve;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(
        begin: begin, 
        end: end),
        duration: duracion,
        curve: Interval(intervalStart, intervaleEnd, curve: curve),
        child: child,
        builder: (BuildContext context, double? value, Widget? child ){
          return Opacity(opacity: value!, child: child,);
        },
    );
  }
}