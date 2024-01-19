import 'package:flutter/material.dart';

class ChangeThemeButton extends StatelessWidget {
  final bool isLightmodeOn;
  const ChangeThemeButton({super.key, required this.isLightmodeOn});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return GestureDetector(
      onTap: () {
        debugPrint('HELLO BUTTON');
      },
      child:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Align(
          
            alignment: Alignment.centerRight,
            child: Icon(
              isLightmodeOn ? Icons.dark_mode : Icons.light_mode,
              color: themeData.colorScheme.onSecondary,
              size: 30,
            )),
      ),
    );
  }
}
