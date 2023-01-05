import 'package:assignment_app/model/assignment_data.dart';
import 'package:assignment_app/presenter/widgets/item_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<AssignmentModules> _moduleList = ModuleList().getAssignments;
  static final DateTime now = DateTime.now();
  final nowSeconds = now.second.obs;
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Obx(
          () => Text(
            nowSeconds.toString(),
          ),
        ),
      ),
      body: SizedBox(
        width: screenSize.width,
        height: screenSize.height,
        child: Stack(
          children: [
            //* background
            ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(10),
              //* item length
              itemCount: _moduleList.length,
              itemBuilder: (context, index) => ItemCard(
                index: index,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
