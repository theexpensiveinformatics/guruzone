import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guruzone/styles/colors.dart';
import 'package:guruzone/styles/texts/d1.dart';
import 'package:guruzone/styles/texts/d1Blue.dart';
import 'package:guruzone/styles/texts/h2.dart';

class paymentScreen extends StatefulWidget{
  @override
  State<paymentScreen> createState() => _paymentScreenState();
}

class _paymentScreenState extends State<paymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: background,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffdedede), // Specify the color of the shadow
                    offset: Offset(0, 4), // Specify the offset of the shadow
                    blurRadius:20, // Specify the blur radius of the shadow
                    spreadRadius: 0, // Specify the spread radius of the shadow
                  ),
                ],
              ),
              height: 90,
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 22,
                          height: 22,
                          child: Image.asset('assets/images/arrow.png',
                            color: darkText,),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Proceed to Pay',
                        style: h2,)
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 5),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffdedede), // Specify the color of the shadow
                      offset: Offset(0, 2), // Specify the offset of the shadow
                      blurRadius:10, // Specify the blur radius of the shadow
                      spreadRadius: 0, // Specify the spread radius of the shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Android App Development',
                      style:  TextStyle(
                        fontFamily: 'semibold',
                        color: blue,
                        fontSize: 16,
                      ),),
                      Text('Mentor: Mr. Prashant',
                      style: h2,)
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffdedede), // Specify the color of the shadow
                      offset: Offset(0, 2), // Specify the offset of the shadow
                      blurRadius:10, // Specify the blur radius of the shadow
                      spreadRadius: 0, // Specify the spread radius of the shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Payment summary',
                            style: h2,),
                          Padding(
                            padding: const EdgeInsets.only(top:8,bottom: 8),
                            child: Container(
                              width: double.infinity,
                              height: 1,
                              color: Color(0xffD9D9D9),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:8,bottom: 8),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text('Approx duration of course:',
                                      style: d1,),
                                    Text('30 hours',
                                      style: d1Blue,),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('Entire fee of the course:',
                                      style: d1,),
                                    Text(' ₹4,500/-',
                                      style: d1Blue,)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('Fees per hour:',
                                      style: d1,),
                                    Text(' ₹150/-',
                                      style: d1Blue,)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Text('Current Payment',
                        style: h2,),
                      Padding(
                        padding: const EdgeInsets.only(top:8,bottom: 8),
                        child: Container(
                          height: 1,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Color(0xffD9D9D9)
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:8,bottom: 8),
                        child: Row(
                          children: [
                            Text('3 hours fee:',
                              style: d1,),
                            Text(' ₹450/-',
                              style: d1Blue,)
                          ],
                        ),
                      ),
                      Text('Total amount to pay  -  ₹450/-',
                        style: h2,),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width/3,
                              height: 36,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  border: Border.all(color: Color(0xff0095FF),
                                      width: 0.65)
                              ),
                              alignment: Alignment.center,
                              child: Text('Cancel',
                                style: TextStyle(
                                    fontFamily: 'RegularFont',
                                    color: Color(0xff0095FF)
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width/3,
                              height: 36,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Color(0xff0095FF)),
                                  color: Color(0xff0095FF)
                              ),
                              alignment: Alignment.center,
                              child: Text('Buy Now',
                                style: TextStyle(
                                    fontFamily: 'RegularFont',
                                    color: Colors.white
                                ),
                              ),
                            ),
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
      ),
    );
  }
}