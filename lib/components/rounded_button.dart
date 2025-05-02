import 'package:flutter/material.dart';

// Refactoring: 코드양 줄이고 더 효율적으로 쓰기 위해서. // 컴포넌트를 만들어놓으면 편하구나!(버튼 같은 거)
// 리팩토링은 필수다!!

class RoundedButton extends StatelessWidget {
  RoundedButton({this.title, this.colour, required this.onPressed, this.icon});

  final Color? colour;
  final String? title;
  final VoidCallback? onPressed;
  final Widget? icon; // icon customizing added.

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        // drawing button shape.
        elevation: 5.0,
        color: colour, // colour로 대체
        borderRadius: BorderRadius.circular(40.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(title!, style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}