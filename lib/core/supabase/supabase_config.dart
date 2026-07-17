import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseConfig {
  static const String url = 'https://oacrsocratvwvxmgoyms.supabase.co';
    static const String publishableKey = 'sb_publishable_4IdnkXA-yAztOyRytnLQbw_ooY8EOsZ';

      static Future<void> initialize() async {
          await Supabase.initialize(
                url: url,
                      publishableKey: publishableKey,
                          );
                            }
                            }