class AssignmentModules {
  String moduleName;
  String part;
  String progressAmount;
  String deadline;

  AssignmentModules({
    required this.moduleName,
    required this.part,
    required this.progressAmount,
    required this.deadline,
  });
}

class ModuleList {
  final List<AssignmentModules> _assignmentList = [
    AssignmentModules(
      moduleName: 'PARE',
      part: 'AE1',
      progressAmount: '80',
      deadline: '2023-01-24 21:30:00',
    ),
    AssignmentModules(
      moduleName: 'PARE',
      part: 'AE2',
      progressAmount: '0',
      deadline: '2023-02-10 21:30:00',
    ),
    AssignmentModules(
      moduleName: 'IoT',
      part: 'AE1',
      progressAmount: '20',
      deadline: '2023-01-09 21:30:00',
    ),
    AssignmentModules(
      moduleName: 'IoT',
      part: 'AE2',
      progressAmount: '0',
      deadline: '2023-02-14 21:30:00',
    ),
    AssignmentModules(
      moduleName: 'DS',
      part: 'AE1',
      progressAmount: '10',
      deadline: '2023-02-15 21:30:00',
    ),
  ];


// List<String> deadlinesStrings = [];

// void getDeadlines(){
//   _assignmentList.forEach((element) {deadlinesStrings.add(element.deadline.split(' ')[0]); });
// }

// datestrings.sort((a, b){ //sorting in ascending order
//     return DateTime.parse(a).compareTo(DateTime.parse(b));
// });



  List<AssignmentModules> get getAssignments => _assignmentList;
}
