import 'package:assignment_app/constant.dart';
import 'package:assignment_app/function_sheet.dart';
import 'package:assignment_app/model/assignment_data.dart';
import 'package:assignment_app/presenter/controllers/remainder_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemCard extends StatelessWidget {
  ItemCard({
    Key? key,
    required this.index,
    required this.remainder,
  }) : super(key: key);

  final int index;
  Remainder remainder;
// final List<Remainder> _moduleTimeList = ModuleTime().getReminaderList;
  final List<AssignmentModules> _moduleList = ModuleList().getAssignments;



  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Obx(
      () => Container(
        padding: const EdgeInsets.only(bottom: 20),
        width: screenSize.width * .9,
        height: screenSize.height * .3,
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            expandBox(
              3,
              Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomCenter,
                      colors: [kCardL, kCardR],
                    ),
                    //color: Colors.white.withOpacity(.3),
                    borderRadius: BorderRadius.circular(20),
                    border:
                        Border.all(width: 1, color: kBorder.withOpacity(.1)),
                  ),
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      expandBox(
                        3,
                        Row(
                          children: [
                            expandBox(
                              2,
                              Column(
                                children: [
                                  expandBox(
                                    2,
                                    responsiveText(
                                        '${_moduleList[index].moduleName} $index'),
                                  ),
                                  expandBox(
                                    1,
                                    responsiveText(_moduleList[index].part),
                                  ),
                                ],
                              ),
                            ),
                            DayCard(
                              text: 'Days',
                              timeCount: remainder.nowDays.value.toString(),
                            ),
                            DayCard(
                              text: 'hours',
                              timeCount: remainder.nowHours.value.toString(),
                            ),
                            DayCard(
                              text: 'minuts',
                              timeCount: remainder.nowMinuts.value.toString(),
                            ),
                            DayCard(
                              text: 'seconds',
                              timeCount: remainder.nowSeconds.value.toString(),
                            ),
                          ],
                        ),
                      ),
                      expandBox(
                        1,
                        Row(
                          children: [
                            responsiveText(_moduleList[index].deadline),
                          ],
                        ),
                      ),
                      // expandBox(
                      //   2,
                      //   responsiveText(
                      //       moduleList.assignments[index].deadline.split(' ')[0]),
                      // ),
                      // expandBox(
                      //   1,
                      //   responsiveText(
                      //       moduleList.assignments[index].deadline.split(' ')[1]),
                      // ),
                      // expandBox(
                      //   1,
                      //   FAProgressBar(
                      //     currentValue: double.parse(
                      //         moduleList.assignments[index].progressAmount),
                      //     progressColor: Colors.greenAccent,
                      //     backgroundColor: Colors.black12,
                      //   ),
                      //),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DayCard extends StatelessWidget {
  DayCard({
    Key? key,
    required this.timeCount,
    required this.text,
  }) : super(key: key);
  final String text;
  String timeCount;
  @override
  Widget build(BuildContext context) {
    return expandBox(
      1,
      Container(
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              spreadRadius: 1,
              color: kPrimeryBlue.withOpacity(.5),
            ),
          ],
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: kBorder,
            width: 1,
          ),
          color: Colors.white,
        ),
        child: Column(
          children: [
            expandBox(
              1,
              responsiveText(
                text,
                padding: 0,
              ),
            ),
            expandBox(
              3,
              responsiveText(
                timeCount,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
