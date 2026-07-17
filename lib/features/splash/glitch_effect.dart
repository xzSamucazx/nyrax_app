import 'dart:math';
import 'package:flutter/material.dart';

class GlitchEffect extends StatelessWidget {
  const GlitchEffect({
      super.key,
          required this.child,
              required this.active,
                });

                  final Widget child;
                    final bool active;

                      @override
                        Widget build(BuildContext context) {
                            if (!active) return child;

                                final random = Random();

                                    return Stack(
                                          children: [
                                                  Transform.translate(
                                                            offset: Offset(random.nextDouble() * 4 - 2, 0),
                                                                      child: Opacity(opacity: 0.75, child: child),
                                                                              ),
                                                                                      Transform.translate(
                                                                                                offset: Offset(random.nextDouble() * -4 + 2, 0),
                                                                                                          child: Opacity(opacity: 0.55, child: child),
                                                                                                                  ),
                                                                                                                          child,
                                                                                                                                ],
                                                                                                                                    );
                                                                                                                                      }
                                                                                                                                      }