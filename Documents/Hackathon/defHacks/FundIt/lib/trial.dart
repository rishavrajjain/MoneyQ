// //import 'package:align_positioned/align_positioned.dart';
// import 'package:flutter/material.dart';

// //import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';

// import 'dart:io';

// import 'job.dart';
// import 'liked.dart';

// class ProfileMenu extends StatefulWidget {
//   @override
//   _ProfileMenuState createState() => _ProfileMenuState();
// }

// class _ProfileMenuState extends State<ProfileMenu> {
//   FocusNode nameFocusNode;
//   FocusNode phoneNumberFocusNode;
//   FocusNode addressFocusNode;

//   File _image;
//   TextEditingController name = TextEditingController(text: 'Initial value');
//   String value;
//   bool nameEnabled = false;
//   bool phoneNumberEnabled = false;
//   bool addressEnabled = false;

//   @override
//   void initState() {
//     super.initState();

//     nameFocusNode = FocusNode();
//     phoneNumberFocusNode = FocusNode();
//     addressFocusNode = FocusNode();
//   }

//   @override
//   void dispose() {
//     // Clean up the focus node when the Form is disposed.
//     nameFocusNode.dispose();
//     phoneNumberFocusNode.dispose();
//     addressFocusNode.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.indigo[50],
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: <Widget>[
//           CircleAvatar(
//             radius: 95,
//             backgroundColor: Colors.white,
//             child: Center(
//               child: ClipOval(
//                 child: SizedBox(
//                   width: 180,
//                   height: 180,
//                   child: (_image != null)
//                       ? Image.file(
//                           _image,
//                           fit: BoxFit.fill,
//                         )
//                       : Image.asset('lib/images/person.png'),
//                 ),
//               ),
//             ),
//           ),
//           Text('Yasin Ehsan'),
//           Text('What are you investing'),
//           Card(
//             color: Colors.white,
//             child: Column(
//               children: <Widget>[
//               FlatButton(
//                 shape: new RoundedRectangleBorder(
//                     borderRadius: new BorderRadius.circular(30.0)),
//                 color: Colors.grey[200],
//                 onPressed: () {},
//                 child: Text('\$10 Investment'),
//               ),
//               Text('Winc'),
//               Text('Notes'),
//               Text('Documents'),
//               Text('Receipts'),
//               Text('Updates from Founders'),
//               Text('Invested on 3/8/20')
//             ]),
//           ),
//           Container(
//                   margin: EdgeInsets.only(top: 120),
//                   constraints: BoxConstraints.expand(height: 200),
//                   child: ListView(
//                       padding: EdgeInsets.only(left: 40),
//                       scrollDirection: Axis.horizontal,
//                       children: getRecentJobs()),
//                 ),
//         ],
//       ),
//     );
//   }

//   Widget getJobCard(Job job) {
//     return GestureDetector(
//       onTap: (){
//          Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => Liked()),
//                 );
//       },
//           child: Container(
//         padding: EdgeInsets.all(10),
//         margin: EdgeInsets.only(right: 20, bottom: 30, top: 30),
//         height: 150,
//         width: 200,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           boxShadow: [
//              BoxShadow(
//               color: Colors.grey,
//               blurRadius: 20.0,
//             ),
//           ],
//           borderRadius: BorderRadius.all(Radius.circular(15))
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: <Widget>[
//             Row(
//               children: <Widget>[
//                 CircleAvatar(
//                   backgroundImage: job.companyLogo,
//                 ),
//                 SizedBox(width:5),
//                 Text(
//                   job.jobTitle,
//                   style: GoogleFonts.montserrat(
//                                 color: Colors.black,
//                                 fontSize: 15,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                 )
//               ],
//             ),
//             Text(job.companyName + " - " + job.timeRequirement, style: GoogleFonts.montserrat(
//                                 color: Colors.black,
//                                 fontSize: 12,
//                                 fontWeight: FontWeight.w500,
//                               )),
//             Text(job.location),
//             Text(/*makeSalaryToK(job.salary)*/'\$20', style: GoogleFonts.montserrat(
//                                 color: Colors.black,
//                                 fontSize: 12,
//                                 fontWeight: FontWeight.w500,
//                               )),
                              
//           ],
//         ),
//       ),
//     );
//   }

//   List<Widget> getRecentJobs() {
//     List<Widget> recentJobCards = [];
//     List<Job> jobs = findJobs();
//     for (Job job in jobs) {
//       recentJobCards.add(getJobCard(job));
//     }
//     return recentJobCards;
//   }
//    List<Job> findJobs() {
//     List<Job> jobs = [];
//     for (int i = 0; i < 10; i++) {
//       jobs.add( Job("English ", "Vin Sharma", 20, "Hourly Rate", "Part time", AssetImage("lib/assets/person.png")));
//     }
//     return jobs;
//   }
// }
