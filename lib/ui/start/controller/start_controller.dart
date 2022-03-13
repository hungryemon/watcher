import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watcher/models/index.dart';
import 'package:watcher/ui/start/index.dart';

class StartScreenController extends SuperController<SessionData?> {
  StartScreenController({
    required this.startRepository,
  });

  final IStartRepository startRepository;

  @override
  void onInit() {
    super.onInit();
    debugPrint('$runtimeType onInit called');
    append(() => startRepository.getSessionId);
  }

  @override
  void onReady() {
    super.onReady();
    debugPrint('$runtimeType onReady called');
  }

  @override
  void onClose() {
    super.onClose();
    debugPrint('$runtimeType onClose called');
  }

  @override
  void onDetached() {
    debugPrint('$runtimeType onDetached called');
  }

  @override
  void onInactive() {
    debugPrint('$runtimeType onInactive called');
  }

  @override
  void onPaused() {
    debugPrint('$runtimeType onPaused called');
  }

  @override
  void onResumed() {
    debugPrint('$runtimeType onResumed called');
  }
}
