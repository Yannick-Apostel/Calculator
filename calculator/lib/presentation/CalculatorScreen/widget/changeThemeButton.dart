import 'package:calculator/application/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChangeThemeButton extends StatelessWidget {
   final bool isLightmodeOn = false;
  const ChangeThemeButton({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Consumer<ThemeService>(
     
      builder: (context, themeService,snapshot) {
        return GestureDetector(
          onTap: () {
            Provider.of<ThemeService>(context, listen: false).toggleThemme();
          },
          child:  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Align(
              
                alignment: Alignment.centerRight,
                child: Icon(
                  themeService.isDarkModeOn ? Icons.dark_mode : Icons.light_mode,
                  color: themeData.colorScheme.onSecondary,
                  size: 30,
                )),
          ),
        );
      }
    );
  }
}
