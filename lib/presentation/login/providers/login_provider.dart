import 'package:get/get.dart';

import '../login_model.dart';

class LoginProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Login.fromJson(map);
      if (map is List) return map.map((item) => Login.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Login?> getLogin(int id) async {
    final response = await get('login/$id');
    return response.body;
  }

  Future<Response<Login>> postLogin(Login login) async =>
      await post('login', login);

  Future<Response> deleteLogin(int id) async => await delete('login/$id');
}
