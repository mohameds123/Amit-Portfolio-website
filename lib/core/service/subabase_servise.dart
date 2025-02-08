import 'package:supabase/supabase.dart';

class SupabaseService {
  final SupabaseClient _client = SupabaseClient("https://wkruxpotmcgywoovpwzw.supabase.co",'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6IndrcnV4cG90bWNneXdvb3Zwd3p3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzkwMzA2MjcsImV4cCI6MjA1NDYwNjYyN30.wX6UR_xE-AyMPBcN9nKZVvKtnPuLcuz8r_c8FjxQ4_g');

  Future<Map<String, dynamic>> getAboutMe() async {
    final response = await _client.from('about_me').select().single();
    return response;
  }

  Future<Map<String, dynamic>> getContactInfo() async {
    final response = await _client.from('contact_info').select().single();
    return response;
  }

  Future<List<dynamic>> getExperience() async {
    final response = await _client.from('experience').select();
    return response;
  }

  Future<Map<String, dynamic>> getPersonalInfo() async {
    final response = await _client.from('personal_info').select().single();
    return response;
  }

  Future<List<dynamic>> getWorks() async {
    final response = await _client.from('works').select();
    return response;
  }

  Future<Map<String, dynamic>> getWorkDetails() async {
    final response = await _client.from('work_details').select().single();
    return response;
  }
}
