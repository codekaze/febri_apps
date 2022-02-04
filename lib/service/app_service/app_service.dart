
import 'package:fireverse/fireverse.dart';

class AppService {
  initialize() async {
    try {
      Fire.register(
        email: "demo@codekaze.com",
        password: "123456",
      );

      Fire.register(
        email: "admin@codekaze.com",
        password: "123456",
      );
    } on Exception catch (_) {
      // showError("Error", "Your Request Failed");
    }
  }
}
