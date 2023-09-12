// import 'package:flutter/material.dart';
// import 'package:guruzone/styles/colors.dart';
// import 'package:guruzone/styles/components/searchScreenCard.dart';
//
//
//
// class newSearchScreen extends StatefulWidget{
//   @override
//   State<newSearchScreen> createState() => _newSearchScreenState();
// }
//
// class _newSearchScreenState extends State<newSearchScreen> {
//   var cardData = [
//     {
//       'name' : 'Riya Patel',
//       'profession' : 'IT Engineer',
//       'ratings' : 4.7,
//       'reviewCount' : 100,
//       'location' : 'Vapi, Gujarat',
//       'linkin' : 'https://in.linkedin.com',
//       'language' : 'English',
//       'personalization' : '100% Personalized',
//       'price' : 5,
//
//     },
//     {
//       'name' : 'Riya Patel',
//       'profession' : 'IT Engineer',
//       'ratings' : 4.7,
//       'reviewCount' : 100,
//       'location' : 'Vapi, Gujarat',
//       'linkin' : 'https://in.linkedin.com',
//       'language' : 'English',
//       'personalization' : '100% Personalized',
//       'price' : 5,
//
//     },
//     {
//       'name' : 'Riya Patel',
//       'profession' : 'IT Engineer',
//       'ratings' : 4.7,
//       'reviewCount' : 100,
//       'location' : 'Vapi, Gujarat',
//       'linkin' : 'https://in.linkedin.com',
//       'language' : 'English',
//       'personalization' : '100% Personalized',
//       'price' : 5,
//
//     },
//   ];
//
//   List<String> skills = ['Flutter','Android','Java','M.L.','Node.js'];
//
//   var SearchHeight = 40.0;
//
//   var filterTags = ['All','Flutter','Android','Ui/Ux'];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         color: background,
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Container(
//                 width: double.infinity,
//                 height: 180,
//                 child: Padding(
//                   padding: const EdgeInsets.only(top:25.0,left: 15.0,right: 15.0),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Container(
//                           child: Row(
//                             children: [
//                               Container(
//                                 width: 25,
//                                 height: 25,
//                                 child: Image.asset('assets/images/arrow.png'),
//                               ),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Container(
//                                   child: Text(
//                                     'Search Your Guru',
//                                     style: TextStyle(
//                                         fontFamily: 'BoldFont',
//                                         fontSize: 18,
//                                         color: Color(0xff333D52)
//                                     ),
//                                   )
//                               )
//                             ],
//                           )
//                       ),
//                       Container(
//                         height: SearchHeight,
//                         width: double.infinity,
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           border: Border.all(color: Color(0xffABABAB)),
//                           borderRadius: BorderRadius.circular(9),
//                         ),
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Container(
//                               height: SearchHeight,
//                               width: SearchHeight,
//                               child: Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Container(
//                                   child: Image.asset('assets/images/guru_for_search.png'),
//                                 ),
//                               ),
//                             ),
//                             Container(
//                               height: 30,
//                               width: 245,
//                               child: TextField(
//                                 decoration: InputDecoration(
//                                     border: InputBorder.none,
//                                     labelText: 'Send Request to All Mentors',
//                                     labelStyle: TextStyle(
//                                       fontFamily: 'RegularFont',
//                                       color: Color(0xff8A98B1),
//                                       fontSize: 14,
//                                     )
//                                 ),
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(right: 2.0),
//                               child: Container(
//                                 height: SearchHeight-4,
//                                 width: SearchHeight-4,
//                                 decoration: BoxDecoration(
//                                     color: Color(0xff0095FF),
//                                     borderRadius: BorderRadius.circular(6)
//                                 ),
//                                 child: Padding(
//                                   padding: const EdgeInsets.all(8.0),
//                                   child: Container(
//                                     child: Image.asset('assets/images/mentor_for_search.png'),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Container(
//                         height: SearchHeight,
//                         width: double.infinity,
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           border: Border.all(color: Color(0xffABABAB)),
//                           borderRadius: BorderRadius.circular(9),
//                         ),
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Container(
//                               height: SearchHeight,
//                               width: SearchHeight,
//                               child: Padding(
//                                 padding: const EdgeInsets.all(9.0),
//                                 child: Container(
//                                   child: Image.asset('assets/images/search.png'),
//                                 ),
//                               ),
//                             ),
//                             Container(
//                               height: 30,
//                               width: 245,
//                               child: TextField(
//                                 decoration: InputDecoration(
//                                     border: InputBorder.none,
//                                     labelText: 'Search Mentors, skills , etc',
//                                     labelStyle: TextStyle(
//                                       fontFamily: 'RegularFont',
//                                       color: Color(0xff8A98B1),
//                                       fontSize: 14,
//                                     )
//                                 ),
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(right: 2.0),
//                               child: Container(
//                                 height: SearchHeight-4,
//                                 width: SearchHeight-4,
//                                 decoration: BoxDecoration(
//                                     color: Color(0xff0095FF),
//                                     borderRadius: BorderRadius.circular(6)
//                                 ),
//                                 child: Padding(
//                                   padding: const EdgeInsets.all(8.0),
//                                   child: Container(
//                                     child: Image.asset('assets/images/filter.png'),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Container(
//                         height: 30,
//                         child: ListView.builder(
//                             scrollDirection: Axis.horizontal,
//                             shrinkWrap: true,
//                             itemCount: filterTags.length,
//                             itemBuilder: (BuildContext context,int index){
//                               return Padding(
//                                 padding: const EdgeInsets.only(right: 6),
//                                 child: Container(
//                                   width: 80,
//                                   child: Center(child: Text(filterTags[index])),
//                                   decoration: BoxDecoration(
//                                       color: Colors.white,
//                                       borderRadius: BorderRadius.circular(8),
//                                       border: Border.all(color: Color(0xffABABAB))
//                                   ),
//                                 ),
//                               );
//                             }),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               ListView(
//                   shrinkWrap: true,
//                   physics: NeverScrollableScrollPhysics(),
//                   children: cardData.map((e) => searchScreenCard(name: e['name'].toString(),
//                       profession: e['profession'].toString(),
//                       ratings: e['ratings'].toString(),
//                       reviewCount: e['reviewCount'].toString(),
//                       location: e['location'].toString(),
//                       linkin: e['linkin'].toString(),
//                       language: e['language'].toString(),
//                       personalization: e['personalization'].toString(),
//                       price: e['price'].toString(),
//                       skills: skills)
//                   ).toList()
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }