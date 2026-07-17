import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

// IMPORTS DO APP
import 'core/auth/auth_gate.dart';
import 'features/auth/welcome_screen.dart';
import 'features/auth/login_screen.dart';
import 'features/auth/register_screen.dart';
import 'features/home/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

    await Supabase.initialize(
        url: 'https://SEU-PROJETO.supabase.co', // 🔥 COLOCA A SUA URL
            anonKey: 'SUA-ANON-KEY', // 🔥 COLOCA SUA KEY
              );

                runApp(const MyApp());
                }

                class MyApp extends StatelessWidget {
                  const MyApp({super.key});

                    @override
                      Widget build(BuildContext context) {
                          return MaterialApp(
                                debugShowCheckedModeBanner: false,
                                      title: 'Nyrax',

                                            theme: ThemeData(
                                                    brightness: Brightness.dark,
                                                            scaffoldBackgroundColor: const Color(0xFF0A0A0A),
                                                                    fontFamily: 'Roboto',
                                                                          ),

                                                                                // 👇 AQUI COMEÇA O APP
                                                                                      home: const AuthGate(),

                                                                                            routes: {
                                                                                                    '/welcome': (context) => const WelcomeScreen(),
                                                                                                            '/login': (context) => const LoginScreen(),
                                                                                                                    '/register': (context) => const RegisterScreen(),
                                                                                                                            '/home': (context) => const HomeScreen(),
                                                                                                                                  },
                                                                                                                                      );
                                                                                                                                        }
                                                                                                                                        }