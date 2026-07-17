import 'package:flutter/material.dart';

import '../features/splash/splash_screen.dart';
import 'theme/nyrax_theme.dart';

class NyraxApp extends StatelessWidget {
  const NyraxApp({super.key});

    @override
      Widget build(BuildContext context) {
          return MaterialApp(
                title: 'Nyrax',
                      debugShowCheckedModeBanner: false,

                            theme: NyraxTheme.light,
                                  darkTheme: NyraxTheme.dark,
                                        themeMode: ThemeMode.system,

                                              home: const SplashScreen(),
                                                  );
                                                    }
                                                    }