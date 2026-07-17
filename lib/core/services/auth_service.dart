import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService {
  final SupabaseClient _supabase = Supabase.instance.client;

    /// Usuário atualmente logado
      User? get currentUser => _supabase.auth.currentUser;

        /// Sessão atual
          Session? get currentSession => _supabase.auth.currentSession;

            /// Stream de mudanças de autenticação
              Stream<AuthState> get authStateChanges =>
                    _supabase.auth.onAuthStateChange;

                      /// Login com e-mail e senha
                        Future<AuthResponse> signIn({
                            required String email,
                                required String password,
                                  }) async {
                                      return await _supabase.auth.signInWithPassword(
                                            email: email,
                                                  password: password,
                                                      );
                                                        }

                                                          /// Cadastro
                                                            Future<AuthResponse> signUp({
                                                                required String email,
                                                                    required String password,
                                                                      }) async {
                                                                          return await _supabase.auth.signUp(
                                                                                email: email,
                                                                                      password: password,
                                                                                          );
                                                                                            }

                                                                                              /// Recuperar senha
                                                                                                Future<void> resetPassword(String email) async {
                                                                                                    await _supabase.auth.resetPasswordForEmail(email);
                                                                                                      }

                                                                                                        /// Logout
                                                                                                          Future<void> signOut() async {
                                                                                                              await _supabase.auth.signOut();
                                                                                                                }

                                                                                                                  /// Usuário logado?
                                                                                                                    bool get isLoggedIn => currentUser != null;
                                                                                                                    }