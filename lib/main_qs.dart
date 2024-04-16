import 'package:dribble_test/main.dart';
import 'package:dribble_test/src/core/enums/environment_config.dart';

Future<void> main() async {
  EnvironmentConfig.init(environment: Environment.qs);
  await mainCommon();
}
