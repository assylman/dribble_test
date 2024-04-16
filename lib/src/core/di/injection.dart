import 'package:dribble_test/src/core/di/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  asExtension: false,
)
Future<void> configureDependencies() async {
  $initGetIt(getIt);
}
