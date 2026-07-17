import 'package:flutter/material.dart';
import 'nyrax_colors.dart';

class NyraxTheme {
  static ThemeData get dark {
      return ThemeData(
            brightness: Brightness.dark,
                  scaffoldBackgroundColor: NyraxColors.darkBackground,

                        colorScheme: const ColorScheme.dark(
                                primary: NyraxColors.cyan,
                                        secondary: NyraxColors.pink,
                                                surface: NyraxColors.darkSurface,
                                                      ),

                                                            appBarTheme: const AppBarTheme(
                                                                    backgroundColor: NyraxColors.darkBackground,
                                                                            elevation: 0,
                                                                                    centerTitle: true,
                                                                                          ),

                                                                                                cardColor: NyraxColors.darkCard,

                                                                                                      useMaterial3: true,
                                                                                                          );
                                                                                                            }

                                                                                                              static ThemeData get light {
                                                                                                                  return ThemeData(
                                                                                                                        brightness: Brightness.light,
                                                                                                                              scaffoldBackgroundColor: NyraxColors.lightBackground,

                                                                                                                                    colorScheme: const ColorScheme.light(
                                                                                                                                            primary: NyraxColors.cyan,
                                                                                                                                                    secondary: NyraxColors.pink,
                                                                                                                                                            surface: NyraxColors.lightSurface,
                                                                                                                                                                  ),

                                                                                                                                                                        appBarTheme: const AppBarTheme(
                                                                                                                                                                                backgroundColor: NyraxColors.lightBackground,
                                                                                                                                                                                        elevation: 0,
                                                                                                                                                                                                centerTitle: true,
                                                                                                                                                                                                      ),

                                                                                                                                                                                                            cardColor: NyraxColors.lightCard,

                                                                                                                                                                                                                  useMaterial3: true,
                                                                                                                                                                                                                      );
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        }