import 'package:app/src/app/route.dart';
import 'package:flutter/material.dart';
import 'package:app/src/app/theme/theme.dart';

class BeTalentApp extends StatelessWidget {
  const BeTalentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Be Talent App',
      theme: AppTheme.theme,
      initialRoute: AppRouter.splashRoute,
      onGenerateRoute: AppRouter.generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
