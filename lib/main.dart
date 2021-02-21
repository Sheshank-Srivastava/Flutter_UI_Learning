import 'package:flutter/material.dart';
import 'package:flutter_contact_us/pet_app/main_pet.dart';

void main() {
  runApp(Main());
}

// class Contact extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//             elevation: 0,
//             title: Text('Contact Us', style: TextStyle(color: Colors.orange)),
//             backgroundColor: Colors.white,
//           ),
//           body: SingleChildScrollView(
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: 5,
//                 ),
//                 Center(
//                   child: Image.asset(
//                     'images/contact.jpg',
//                     height: 250,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Text(
//                   'Have any isse \n Feel free to Contact Us',
//                   style: TextStyle(
//                     fontSize: 18,
//                     color: Colors.grey.shade800,
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: 20),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Padding(
//                         padding: EdgeInsets.all(8.0),
//                         child: Container(
//                           height: 100,
//                           width: 150,
//                           decoration: BoxDecoration(boxShadow: [
//                             BoxShadow(
//                               color: Colors.grey,
//                               blurRadius: 20,
//                             ),
//                           ],
//                             color: Colors.white,
//                           ),
//                           child: Column(
//                             children: [
//                               Icon(Icons.alternate_email,
//                                   color: Colors.orange, size: 50),
//                               Text(
//                                 'Write to use:\nvoidus @gmail.com ',
//                                 textAlign: TextAlign.center,
//                               ),
//                             ],
//                           ),
//                         )),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     Padding(
//                         padding: EdgeInsets.all(8.0),
//                         child: Container(
//                           height: 100,
//                           width: 150,
//                           decoration: BoxDecoration(boxShadow: [
//                             BoxShadow(
//                               color: Colors.grey,
//                               blurRadius: 20,
//                             ),
//                           ],
//                             color: Colors.white,
//                           ),
//                           child: Column(
//                             children: [
//                               Icon(Icons.help_outline,
//                                   color: Colors.orange, size: 50),
//                               Text(
//                                 'FAQ\'s\nFrequently Asked Questions',
//                                 textAlign: TextAlign.center,
//                               ),
//                             ],
//                           ),
//                         )),
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Padding(
//                         padding: EdgeInsets.all(8.0),
//                         child: Container(
//                           height: 100,
//                           width: 150,
//                           decoration: BoxDecoration(boxShadow: [
//                             BoxShadow(
//                               color: Colors.grey,
//                               blurRadius: 20,
//                             ),
//                           ],
//                             color: Colors.white,
//                           ),
//                           child: Column(
//                             children: [
//                               Icon(Icons.phone, color: Colors.orange, size: 50),
//                               Text(
//                                 'Phone Number\n+91-9350164795',
//                                 textAlign: TextAlign.center,
//                               ),
//                             ],
//                           ),
//                         )),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     Padding(
//                         padding: EdgeInsets.all(8.0),
//                         child: Container(
//                           height: 100,
//                           width: 150,
//                           decoration: BoxDecoration(
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.grey,
//                                 blurRadius: 20,
//                               ),
//                             ],
//                             color: Colors.white,
//                           ),
//                           child: Column(
//                             children: [
//                               Icon(Icons.location_on,
//                                   color: Colors.orange, size: 50),
//                               Text(
//                                 'Address\nGurugram',
//                                 textAlign: TextAlign.center,
//                               ),
//                             ],
//                           ),
//                         )),
//                   ],
//                 ),
//                 Text('Copyright . 2021 Sheshank',style: TextStyle(color: Colors.orange),),
//                 Text('All rights reserved',style: TextStyle(color: Colors.orange))
//               ],
//             ),
//           )),
//     );
//   }
// }
