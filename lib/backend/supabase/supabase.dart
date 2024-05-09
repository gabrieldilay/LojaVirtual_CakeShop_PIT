import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://ocryhxvsycsqiorqfolp.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9jcnloeHZzeWNzcWlvcnFmb2xwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTUyMTM1NTIsImV4cCI6MjAzMDc4OTU1Mn0.KoXAbPP42Nrf0FiPvSAnYggAz3UGTSWmQlYvh-p4Ajw';

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
