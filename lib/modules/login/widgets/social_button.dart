import 'package:flutter/material.dart';
import 'package:splitit/theme/app_theme.dart';

class SocialButtonWidget extends StatelessWidget {
  final String imagePhath;
  final String label;
  final VoidCallback onTap;

  const SocialButtonWidget(
      {Key? key,
      required this.imagePhath,
      required this.label,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.fromBorderSide(
                BorderSide(color: AppTheme.colors.border))),
        child: Row(
          children: [
            Container(
              width: 60,
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 16,
                  ),
                  Image.asset(
                    imagePhath,
                    width: 27,
                    height: 27,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    width: 1,
                    color: AppTheme.colors.border,
                  )
                ],
              ),
            ),
            Expanded(child: Container()),
            Text(label, style: AppTheme.textStyles.button),
            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }
}
