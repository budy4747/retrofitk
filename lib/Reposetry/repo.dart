import '../client/ApiClient.dart';
import '../model/User.dart';

class Repository {
  late final ApiClient apiClient;

  Repository({required this.apiClient});

Future<Post?> rCreateuser(String mobile ,String app) =>
    apiClient.noVerify(mobile, app);


}