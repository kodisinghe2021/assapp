import 'dart:async';

import 'package:assignment_app/constant.dart';
import 'package:assignment_app/function_sheet.dart';
import 'package:assignment_app/model/assignment_data.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatefulWidget {
  const ItemCard({required this.index, super.key});

  final int index;
  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
// initialize time counter
  late Timer timer;

  final List<AssignmentModules> _moduleList = ModuleList().getAssignments;

//times
  int nowDays = 0;
  int nowHours = 0;
  int nowMinuts = 0;
  int nowSeconds = 0;

  Duration _remainingDays(String deadline) {
    DateTime deadlineDate = DateTime.parse(deadline);
    DateTime currentDate = DateTime.now();
    return deadlineDate.difference(currentDate);
  }

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

  void getCurrentTime() {
    setState(() {
      nowDays = _remainingDays(_moduleList[widget.index].deadline).inDays;
      nowHours = _remainninghours(_moduleList[widget.index].deadline);
      nowMinuts = _remainningminuts(_moduleList[widget.index].deadline);
      nowSeconds = _remainningSeconds(_moduleList[widget.index].deadline);
    });
  }

  @override
  void initState() {
    // TODO: implement initState

    timer = Timer.periodic(
      const Duration(milliseconds: 1000),
      (Timer t) => getCurrentTime(),
    );

    super.initState();
  }

  @override
  void deactivate() {
    timer.cancel();
    // TODO: implement deactivate
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      width: screenSize.width * .9,
      height: screenSize.height * .3,
      child: Row(
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
                    colors: [kWhite, kWhite],
                  ),
                  //color: Colors.white.withOpacity(.3),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1, color: kBorder.withOpacity(.1)),
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
                                      _moduleList[widget.index].moduleName),
                                ),
                                expandBox(
                                  1,
                                  responsiveText(
                                      _moduleList[widget.index].part),
                                ),
                              ],
                            ),
                          ),
                          DayCard(
                            text: 'Days',
                            timeCount: nowDays.toString(),
                          ),
                          DayCard(
                            text: 'hours',
                            timeCount: nowHours.toString(),
                          ),
                          DayCard(
                            text: 'minuts',
                            timeCount: nowMinuts.toString(),
                          ),
                          DayCard(
                            text: 'seconds',
                            timeCount: nowSeconds.toString(),
                          ),
                        ],
                      ),
                    ),
                    expandBox(
                      1,
                      Row(
                        children: [
                          responsiveText(''),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
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
              blurRadius: 1,
              spreadRadius: .1,
              color: kPrimeryBlue.withOpacity(.1),
            ),
          ],
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: kWhite,
            width: .5,
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
