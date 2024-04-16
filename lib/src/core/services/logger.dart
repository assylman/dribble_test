// Package imports:
// ignore_for_file: avoid_classes_with_only_static_members

// Dart imports:
import 'dart:developer';
import 'package:injectable/injectable.dart';

@lazySingleton
class Logger {
  void info(String msg) => log('\x1B[34m$msg\x1B[0m');

  void error(String? msg, [dynamic e, StackTrace? s]) {
    log('\x1B[31m$msg\n${e.toString()}\n${s.toString()}\x1B[0m');
  }

  void success(String? msg) => log('\x1B[32m$msg\x1B[0m');

  void warning(String? msg) => log('\x1B[33m$msg\x1B[0m');
}
