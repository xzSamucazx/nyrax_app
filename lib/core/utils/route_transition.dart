import 'package:flutter/material.dart';

Route fadeRoute(Widget page) {
  return PageRouteBuilder(
      transitionDuration: const Duration(milliseconds: 400),
          reverseTransitionDuration: const Duration(milliseconds: 300),
              pageBuilder: (_, animation, __) => page,
                  transitionsBuilder: (_, animation, __, child) {
                        final fade = Tween(begin: 0.0, end: 1.0).animate(animation);

                              final slide = Tween<Offset>(
                                      begin: const Offset(0, 0.1), // sobe suave
                                              end: Offset.zero,
                                                    ).animate(animation);

                                                          return FadeTransition(
                                                                  opacity: fade,
                                                                          child: SlideTransition(
                                                                                    position: slide,
                                                                                              child: child,
                                                                                                      ),
                                                                                                            );
                                                                                                                },
                                                                                                                  );
                                                                                                                  }