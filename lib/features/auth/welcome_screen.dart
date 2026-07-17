import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  Future<void> signInWithGoogle() async {
    await Supabase.instance.client.auth.signInWithOAuth(
      OAuthProvider.google,
      redirectTo: 'io.supabase.flutter://login-callback',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 🌌 FUNDO
          Positioned.fill(
            child: Image.asset(
              'assets/images/welcome_background.png',
              fit: BoxFit.cover,
            ),
          ),

          // 🌑 OVERLAY
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.7),
                    Colors.black,
                  ],
                ),
              ),
            ),
          ),

          // 📱 CONTEÚDO
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),

                  const Text(
                    'Bem-vindo.',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 30),

                  // 🔵 ENTRAR
                  Container(
                    height: 44,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFF00E5FF),
                          Color(0xFFFF00AA),
                        ],
                      ),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                      ),
                      child: const Text(
                        'Entrar',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  // ⚫ CRIAR CONTA
                  Container(
                    height: 44,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: Color(0xFF00E5FF)),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/register');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black.withOpacity(0.4),
                        shadowColor: Colors.transparent,
                      ),
                      child: const Text(
                        'Criar conta',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // DIVISOR
                  Row(
                    children: const [
                      Expanded(child: Divider(color: Colors.white30)),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text('ou', style: TextStyle(color: Colors.white70)),
                      ),
                      Expanded(child: Divider(color: Colors.white30)),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // 🔵 GOOGLE (AGORA FUNCIONA)
                  Container(
                    height: 44,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white24),
                    ),
                    child: ElevatedButton.icon(
                      onPressed: signInWithGoogle,
                      icon: const Icon(Icons.g_mobiledata, color: Colors.white),
                      label: const Text(
                        'Continuar com Google',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black.withOpacity(0.4),
                        shadowColor: Colors.transparent,
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    'CADA PERFIL CONTA UMA HISTÓRIA.',
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 10,
                      letterSpacing: 2,
                    ),
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}