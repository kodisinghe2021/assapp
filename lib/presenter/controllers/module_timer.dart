// import 'package:assignment_app/model/assignment_data.dart';
// import 'package:assignment_app/presenter/controllers/remainder_controller.dart';
// import 'package:get/get.dart';
// import 'package:logger/logger.dart';

// class ModuleTime {
//   ModuleTime() {
//     setDeadlines();
//     createRemainderList();
//   }
// // creating list of assignment modules
//   final List<AssignmentModules> _moduleList = ModuleList().getAssignments;

// // creating empty list for storing deadlines
//   List<String> deadLines = [];

// //get each modules one by one and store their deadlines to the above empty
// // dealine list one by one.
//   void setDeadlines() {
//     for (var element in _moduleList) {
//       deadLines.add(element.deadline);
//       Logger().i('list adding.........-- ${element.moduleName}');
//     }
//     Logger().i("deadline list created-- $deadLines");
//   }

// // creating empty list of Remainders
//   List<Remainder> _remainderList = [];

// // creating REmiander object
//   late Remainder _remainder;

// //calling remiander class and make objects for every deadlines
//   void createRemainderList() {
//     deadLines.forEach((element) {
//       _remainder = Get.put(Remainder());
//       Logger().i('Adding Reminader object.... ${_remainderList.length}');
//     });
//   }

// // returns remainder object list
//   List<Remainder> get getReminaderList => _remainderList;
// }
