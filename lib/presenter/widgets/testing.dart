// import 'package:assignment_app/presenter/controllers/time_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';

// class Te extends StatelessWidget {
//   Te({super.key});

//   final TimeController _timeController = Get.put(TimeController());
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Obx(
//           () => Column(
//             children: [
//               Text(
//                 _timeController.nowSeconds.value.toString(),
//                 style: GoogleFonts.acme(fontSize: 100),
//               ),
//               const SizedBox(height: 20),
//               Text(
//                 _timeController.nowMinuts.toString(),
//                 style: GoogleFonts.acme(fontSize: 100),
//               ),
//               const SizedBox(height: 20),
//               Text(
//                 _timeController.nowHours.toString(),
//                 style: GoogleFonts.acme(fontSize: 100),
//               ),
//               const SizedBox(height: 20),
//               Text(
//                 _timeController.nowDays.toString(),
//                 style: GoogleFonts.acme(fontSize: 100),
//               ),
            
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
