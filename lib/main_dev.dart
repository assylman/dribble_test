import 'package:dribble_test/src/core/enums/environment_config.dart';

import 'main.dart';

Future<void> main() async {
  EnvironmentConfig.init(environment: Environment.dev);
  await mainCommon();
}
