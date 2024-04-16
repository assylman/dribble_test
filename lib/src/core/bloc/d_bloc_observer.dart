import 'package:bloc/bloc.dart';
import 'package:dribble_test/src/core/di/injection.dart';
import 'package:dribble_test/src/core/services/logger.dart';

class DBlocObserver extends BlocObserver {
  @override
  void onChange(bloc, change) {
    super.onChange(bloc, change);
    getIt<Logger>().info('onChange(${bloc.runtimeType}, ${change.currentState})');
  }

  @override
  void onError(bloc, error, stackTrace) {
    getIt<Logger>().error('onError(${bloc.runtimeType}', error, stackTrace);
    super.onError(bloc, error, stackTrace);
  }
}
