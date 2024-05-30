import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://pbzuwnestzzbvdukzxbp.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBienV3bmVzdHp6YnZkdWt6eGJwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTY1MTMwNjAsImV4cCI6MjAzMjA4OTA2MH0.z10EKzM9l095BfC0ncQJQSNFe6cCsBFaKtuwKKw1Log';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
