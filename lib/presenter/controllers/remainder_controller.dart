import 'dart:async';

import 'package:assignment_app/model/assignment_data.dart';
import 'package:get/state_manager.dart';
import 'package:logger/logger.dart';

class Remainder extends GetxController {
  Remainder({
    required this.index,
  });

  final int index;

  final List<AssignmentModules> _moduleList = ModuleList().getAssignments;

//^ observable varibles, this variables will be change
  RxInt nowDays = 0.obs;
  RxInt nowHours = 0.obs;
  RxInt nowMinuts = 0.obs;
  RxInt nowSeconds = 0.obs;

//^ timer object create
  late Timer _timer;
//^
  void getCurrentTime() {
    nowDays.value = _remainingDays(_moduleList[index].deadline).inDays;
    nowHours.value = _remainninghours(_moduleList[index].deadline);
    nowMinuts.value = _remainningminuts(_moduleList[index].deadline);
    nowSeconds.value = _remainningSeconds(_moduleList[index].deadline);
  }

// this method will call to getCurrentTime method every seconds by seconds
  @override
  void onReady() {
    _timer = Timer.periodic(
        const Duration(seconds: 1), (Timer t) => getCurrentTime());
    Logger().i('onReady called');
    super.onReady();
  }

  @override
  void onClose() {
    _timer.cancel();
    super.onClose();
  }

/*
 find defference between deadline and current date in Duration type
 when calling Duration object can get days,hourse,minuts,sconds separatly
*/
  Duration _remainingDays(String deadline) {
    DateTime deadlineDate = DateTime.parse(deadline);
    DateTime currentDate = DateTime.now();
    return deadlineDate.difference(currentDate);
  }

// get object ctreated by  _remainingDays(String deadline) method
// and get minuts, hours.. separatly

//^ this will return remainning seconds
  int _remainningSeconds(String deadline) {
    return _remainingDays(deadline).inSeconds % 60;
  }

//^ this will return remainning minuts
  int _remainningminuts(String deadline) {
    return _remainingDays(deadline).inMinutes % 60;
  }

//^ this will return remainning hourse
  int _remainninghours(String deadline) {
    return _remainingDays(deadline).inHours % 24;
  }
}
