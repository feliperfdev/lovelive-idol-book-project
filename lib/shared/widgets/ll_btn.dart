import 'package:flutter/material.dart';
import 'package:lovelive_ibp/shared/theme/colors.dart';

class LLButton extends StatelessWidget {
  final String? text;
  final Function? onTap;
  final double? elevation;

  const LLButton(
      {Key? key, required this.text, required this.onTap, this.elevation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      child: Text(
        text!,
        style: Theme.of(context).textTheme.headline1,
      ),
      onPressed: onTap! as void Function(),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppColors.bgColor),
          side: MaterialStateProperty.all(
              const BorderSide(color: Colors.white, width: 1)),
          overlayColor: MaterialStateProperty.all(Colors.pink[50]),
          shadowColor: MaterialStateProperty.all(Colors.pinkAccent[100]),
          elevation: MaterialStateProperty.all(elevation)),
    );
  }
}
