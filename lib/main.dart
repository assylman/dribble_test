import 'dart:async';

import 'package:dribble_test/src/core/bloc/d_bloc_observer.dart';
import 'package:dribble_test/src/core/d_app.dart';
import 'package:dribble_test/src/core/di/injection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> mainCommon() async {
  await runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await SystemChrome.setPreferredOrientations(
        [
          DeviceOrientation.portraitUp,
        ],
      );

      await Hive.initFlutter();
      await configureDependencies();

      Bloc.observer = DBlocObserver();
      runApp(DApp());
    },
    (error, stackTrace) {
      WidgetsFlutterBinding.ensureInitialized();
    },
    zoneSpecification: ZoneSpecification(
      createTimer: (self, parent, zone, duration, void Function() callback) {
        return parent.createTimer(zone, duration, callback);
      },
      createPeriodicTimer: (self, parent, zone, duration, void Function(Timer) callback) {
        return parent.createPeriodicTimer(zone, duration, callback);
      },
    ),
  );
}
