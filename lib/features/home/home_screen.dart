import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

    @override
      Widget build(BuildContext context) {
          return Scaffold(
                backgroundColor: Colors.black,
                      appBar: AppBar(
                              title: const Text('Nyrax'),
                                      backgroundColor: Colors.black,
                                            ),
                                                  body: const Center(
                                                          child: Text(
                                                                    'Você está logado 😎',
                                                                              style: TextStyle(color: Colors.white),
                                                                                      ),
                                                                                            ),
                                                                                                );
                                                                                                  }
                                                                                                  }