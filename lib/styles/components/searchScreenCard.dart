import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guruzone/screens/mentorProfileScreen.dart';
import 'package:guruzone/screens/postList.dart';
import 'package:guruzone/styles/backgrounds/backgroundWhite.dart';
import 'package:guruzone/styles/backgrounds/boxTextInput.dart';
import 'package:guruzone/styles/backgrounds/choiceDisable.dart';
import 'package:guruzone/styles/backgrounds/choiceEnable.dart';
import 'package:guruzone/styles/backgrounds/roundedBlue.dart';
import 'package:guruzone/styles/colors.dart';
import 'package:guruzone/styles/texts/blueRegular.dart';
import 'package:guruzone/styles/texts/blueSmall.dart';
import 'package:guruzone/styles/texts/d1.dart';
import 'package:guruzone/styles/texts/d1Light.dart';
import 'package:guruzone/styles/texts/h2.dart';
import 'package:guruzone/styles/texts/inputFieldSheet.dart';
import 'package:guruzone/styles/texts/r1.dart';

class searchScreenCard extends StatelessWidget{
  final String name;
  final String profession;
  final String ratings;
  final String reviewCount;
  final String location;
  final String linkin;
  final String language;
  final String personalization;
  final String price;
  final List<dynamic> skills;

  const searchScreenCard({super.key,
    required this.name,
    required this.profession,
    required this.ratings,
    required this.reviewCount,
    required this.location,
    required this.linkin,
    required this.language,
    required this.personalization,
    required this.price,
    required this.skills});

  @override
  Widget build(BuildContext context) {
    String typeCheck = "100% Personalized";
    var imgUrl = 'https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcT102smwP3i_8JvPTdQLKx3s9FQl42bP6q5HIzKoWGMchz0s3EMOYAGCgPkz-QrQ4IOxARMChyDj0WBgQ4';


    TextEditingController _topic = TextEditingController();
    TextEditingController _desc = TextEditingController();
    TextEditingController _lang = TextEditingController();
    TextEditingController _amount = TextEditingController();
    String _type= 'empty';
    TextEditingController _platform = TextEditingController();
    TextEditingController _city = TextEditingController();
    TextEditingController _category = TextEditingController();



    List<PostList> postlists =List.empty(growable: true);

    int selectedIndex= -1;

    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 9, 15, 9),
      child: Container(

        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 17, 20, 17),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>mentorProfileScreen()));
                    },
                    child:
                    // Container(
                    //   width: 90,
                    //   height: 100,
                    //   decoration: BoxDecoration(
                    //       color: Color(0xffD9D9D9),
                    //       borderRadius: BorderRadius.circular(10)
                    //   ),
                    // ),
                    Container(
                      width: 90,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          fit: BoxFit.fitHeight,
                          '$imgUrl',
                          loadingBuilder: (BuildContext context, Widget child,
                              ImageChunkEvent? loadingProgress) {
                            if (loadingProgress == null) {
                              return child;
                            }
                            return Center(
                              child: Container(
                                width: 50,
                                child: LinearProgressIndicator(
                                  borderRadius: BorderRadius.circular(100),
                                  color: blue,

                                  value: loadingProgress.expectedTotalBytes != null
                                      ? loadingProgress.cumulativeBytesLoaded /
                                      loadingProgress.expectedTotalBytes!
                                      : null,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(13, 0, 16, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(name,
                          style: h2
                        ),
                        Container(
                          width: 150,
                          child: Text(profession,
                            style: d1Light,overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                                width: 13,
                                height: 13,
                                child: Image.asset('assets/images/star_fill.png')
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(ratings,
                              style: d1,
                            ),
                            Text(' ('+reviewCount+' Reviews)',
                              style: d1
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                                width: 13,
                                height: 13,
                                child: Image.asset('assets/images/location_fill.png')
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(location,
                              style: d1
                            ),
                          ],
                        )
                      ],
                    ),
                  ),

                  Expanded(
                    child: Container(
                      width: 30,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            child: Image.asset('assets/images/linkedin.png'),
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Color(0xff0095FF))
                            ),
                          ),
                          SizedBox(
                            height: 17,
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Image.asset('assets/images/heart.png'),
                            ),
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Color(0xffFF7070))
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(

                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(top: 4,bottom: 4,left: 10,right: 10),
                      decoration: boxTextInput,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Image.asset('assets/images/global_blue.png'),
                            width: 15,
                            height: 15,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(language,
                            style:blueSmall
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width/60,),
                    Container(
                      padding: EdgeInsets.only(top: 4,bottom: 4,right: 10,left: 10),
                      decoration: boxTextInput,
                      alignment: Alignment.center,
                      child: Text(personalization,
                        style: blueSmall
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Container(

                    child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 6,childAspectRatio: 3.5,mainAxisSpacing: 6),
                      shrinkWrap: true,

                      itemBuilder: (context,index){
                        return Container(
                          alignment: Alignment.center,
                          height: 10,
                          decoration: BoxDecoration(
                              border: Border.all(color: borderColor),
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Text(skills[index],
                            style: d1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        );
                      },
                      itemCount: skills.length,
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/3,
                      height: 36,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Color(0xff0095FF))
                      ),
                      alignment: Alignment.center,
                      child: Text("From \$"+price+'/hour',
                        style: TextStyle(
                            fontFamily: 'semibold',
                            color: Color(0xff0095FF)
                        ),
                      ),
                    ),
                    InkWell(
                        onTap: (){
                          showModalBottomSheet<dynamic>(
                              isScrollControlled: true,
                              showDragHandle: true,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),)

                              ),
                              elevation: 0,

                              isDismissible: false,
                              backgroundColor: background,
                              context: context,
                              builder:( context){
                                return SingleChildScrollView(
                                  child: Container(
                                    height: 700,
                                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                                    child: SingleChildScrollView(
                                      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                                      child: Container(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            ListTile(
                                              title: Text("*The request will be sent to all mentors.",style: blueRegular),
                                            ),
                                            ListTile(
                                              title: Text("What do you want to learn?",style: h2,),
                                              subtitle: TextField(autofocus:true,
                                                controller: _topic,
                                                style: inputFieldSheet,
                                                decoration: InputDecoration(
                                                  hintText: "Android App Development",
                                                  hintStyle: inputFieldSheet,
                                                  border: OutlineInputBorder(
                                                    borderSide: BorderSide(color: borderColor),

                                                    borderRadius: BorderRadius.all(
                                                      Radius.circular(10),
                                                    ),
                                                  ),enabledBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(10),
                                                    borderSide: BorderSide(color: borderColor)
                                                ),
                                                  focusedBorder: OutlineInputBorder(
                                                      borderRadius: BorderRadius.circular(10),
                                                      borderSide: BorderSide(color: blue)
                                                  ),

                                                ),

                                              ),
                                            ),
                                            ListTile(
                                              title: Text("Description",style: h2,),
                                              subtitle: TextField(autofocus:true,
                                                controller: _desc,
                                                maxLength: 200,
                                                style: inputFieldSheet,
                                                decoration: InputDecoration(
                                                  hintText: "I want to learn Backend in Android App Development",
                                                  hintStyle: inputFieldSheet,border: OutlineInputBorder(
                                                  borderSide: BorderSide(color: borderColor),

                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(10),
                                                  ),
                                                ),enabledBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(10),
                                                    borderSide: BorderSide(color: borderColor)
                                                ),
                                                  focusedBorder: OutlineInputBorder(
                                                      borderRadius: BorderRadius.circular(10),
                                                      borderSide: BorderSide(color: blue)
                                                  ),
                                                ),
                                              ),
                                            ),
                                            ListTile(
                                              title: Text("Language",style: h2,),
                                              subtitle: TextField(autofocus:true,
                                                style: inputFieldSheet,
                                                controller: _lang,
                                                decoration: InputDecoration(
                                                  hintText: "English",
                                                  hintStyle: inputFieldSheet,
                                                  border: OutlineInputBorder(
                                                    borderSide: BorderSide(color: borderColor),

                                                    borderRadius: BorderRadius.all(
                                                      Radius.circular(10),
                                                    ),
                                                  ),enabledBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(10),
                                                    borderSide: BorderSide(color: borderColor)
                                                ),
                                                  focusedBorder: OutlineInputBorder(
                                                      borderRadius: BorderRadius.circular(10),
                                                      borderSide: BorderSide(color: blue)
                                                  ),
                                                ),
                                              ),
                                            ),
                                            ListTile(
                                              title: Text("How much you can pay per hour?",style: h2,),
                                              subtitle: TextField(autofocus:true,
                                                style: inputFieldSheet,
                                                controller: _amount,
                                                keyboardType: TextInputType.number,
                                                decoration: InputDecoration(
                                                  hintText: "200",
                                                  hintStyle: inputFieldSheet,border: OutlineInputBorder(
                                                  borderSide: BorderSide(color: borderColor),

                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(10),
                                                  ),
                                                ),enabledBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(10),
                                                    borderSide: BorderSide(color: borderColor)
                                                ),
                                                  focusedBorder: OutlineInputBorder(
                                                      borderRadius: BorderRadius.circular(10),
                                                      borderSide: BorderSide(color: blue)
                                                  ),
                                                ),
                                              ),
                                            ),

                                            //type by smita
                                            // ListTile(
                                            //   title: Text("Type",style: h2,),
                                            //   subtitle: TextField(autofocus:true,
                                            //     style: inputFieldSheet,
                                            //     controller: _type,
                                            //     decoration: InputDecoration(
                                            //       hintText: "100% Personalized",
                                            //       hintStyle: inputFieldSheet,
                                            //     ),
                                            //   ),
                                            // ),



                                            //type try to toggle
                                            Container(
                                                alignment: Alignment.topLeft,
                                                width: double.infinity,
                                                margin: EdgeInsets.only(top: 10,left: 15),
                                                child: Text('Type',style: h2,)),

                                            Container(
                                              margin: EdgeInsets.only(top: 10,left: 15,right: 15),
                                              width: double.infinity,
                                              height: 60,
                                              decoration: backgroundWhite,
                                              padding: EdgeInsets.all(5),
                                              child: Row(
                                                children: [
                                                  InkWell(
                                                    onTap: (){
                                                      _type='100% Personalized';
                                                      print('object');

                                                      typeCheck='100% Personalized';



                                                    },

                                                    child: Container(
                                                      width: MediaQuery.of(context).size.width/2-30,
                                                      padding: EdgeInsets.only(top: 5,bottom: 5),
                                                      alignment: Alignment.center,
                                                      decoration: typeCheck == '100% Personalized' ? choiceEnable:choiceDisable,
                                                      child: Text('100%\nPersonalized',
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                          fontFamily: 'semibold',
                                                          fontSize: 14,
                                                          color: typeCheck == '100% Personalized'?Colors.white:darkText,
                                                        ),
                                                      ),
                                                    ),





                                                  ),
                                                  SizedBox(width: 5,),

                                                  InkWell(
                                                    onTap: ()
                                                    {
                                                      print('2df');
                                                      // setState(() {
                                                      //   print(typeCheck);
                                                      //   print('set state');
                                                      //   _type='100% Personalized';
                                                      //   typeCheck='Partially Personalized';
                                                      // });
                                                    }
                                                    ,child: Container(
                                                    width: MediaQuery.of(context).size.width/2-30,
                                                    padding: EdgeInsets.only(top: 5,bottom: 5),
                                                    alignment: Alignment.center,
                                                    decoration: typeCheck == 'Partially Personalized' ? choiceEnable:choiceDisable,
                                                    child: Text('Partially\nPersonalized',
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                        fontFamily: 'semibold',
                                                        fontSize: 14,
                                                        color: typeCheck == 'Partially Personalized' ?Colors.white:darkText,
                                                      ),
                                                    ),
                                                  ),
                                                  )


                                                ],
                                              ),
                                            ),


                                            ListTile(
                                              title: Text("Offline/Online/Both",style: h2,),
                                              subtitle: TextField(autofocus:true,
                                                style: inputFieldSheet,
                                                controller: _platform,
                                                decoration: InputDecoration(
                                                  hintText: "Online",
                                                  hintStyle: inputFieldSheet,border: OutlineInputBorder(
                                                  borderSide: BorderSide(color: borderColor),

                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(10),
                                                  ),
                                                ),enabledBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(10),
                                                    borderSide: BorderSide(color: borderColor)
                                                ),
                                                  focusedBorder: OutlineInputBorder(
                                                      borderRadius: BorderRadius.circular(10),
                                                      borderSide: BorderSide(color: blue)
                                                  ),
                                                ),
                                              ),
                                            ),
                                            ListTile(
                                              title: Text("City",style: h2,),
                                              subtitle: TextField(autofocus:true,
                                                style: inputFieldSheet,
                                                controller: _city,

                                                decoration: InputDecoration(
                                                  hintText: "Vadodara",
                                                  hintStyle: inputFieldSheet,border: OutlineInputBorder(
                                                  borderSide: BorderSide(color: borderColor),

                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(10),
                                                  ),
                                                ),enabledBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(10),
                                                    borderSide: BorderSide(color: borderColor)
                                                ),
                                                  focusedBorder: OutlineInputBorder(
                                                      borderRadius: BorderRadius.circular(10),
                                                      borderSide: BorderSide(color: blue)
                                                  ),
                                                ),
                                              ),
                                            ),
                                            ListTile(
                                              title: Text("Category",style: h2,),
                                              subtitle: TextField(autofocus:true,
                                                style: inputFieldSheet,
                                                controller: _category,

                                                decoration: InputDecoration(
                                                  hintText: "Select",
                                                  hintStyle: inputFieldSheet,border: OutlineInputBorder(
                                                  borderSide: BorderSide(color: borderColor),

                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(10),
                                                  ),
                                                ),enabledBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(10),
                                                    borderSide: BorderSide(color: borderColor)
                                                ),
                                                  focusedBorder: OutlineInputBorder(
                                                      borderRadius: BorderRadius.circular(10),
                                                      borderSide: BorderSide(color: blue)
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Center(
                                              child: Container(
                                                height: 50,
                                                width: double.infinity,
                                                margin: EdgeInsets.only(right: 15,left: 15,top: 20,bottom: 20),
                                                decoration: roundedBlue,
                                                child: TextButton(onPressed: (){
                                                  String topic= _topic.text.trim();
                                                  String desc= _desc.text.trim();
                                                  String lang= _lang.text.trim();
                                                  String amount= _amount.text.trim();
                                                  String type= _type.toString().trim();
                                                  String platform= _platform.text.trim();
                                                  String city= _city.text.trim();
                                                  String category= _category.text.trim();

                                                  if(topic.isNotEmpty && desc.isNotEmpty && lang.isNotEmpty && amount.isNotEmpty && type.isNotEmpty && platform.isNotEmpty && city.isNotEmpty && category.isNotEmpty)
                                                  {

                                                    // setState(() {
                                                    //
                                                    //   _topic.text="";
                                                    //   _desc.text="";
                                                    //   _lang.text="";
                                                    //   _amount.text="";
                                                    //   _type="";
                                                    //   _platform.text="";
                                                    //   _city.text="";
                                                    //   _category.text="";
                                                    //   postlists.add(PostList(topic: topic, desc: desc, lang: lang, amount: amount, type: type, platform: platform, city: city, category: category));
                                                    // });
                                                  }

                                                  Navigator.of(context).pop();
                                                }, child: Text("Post Requirement",style: TextStyle(color: Colors.white,fontFamily: 'bold'),)),
                                              ),

                                            ),
                                            SizedBox(height: 20,),


                                          ],),
                                      ),
                                    ),
                                  ),
                                );

                              });

                        },
                      child: Container(
                        width:  MediaQuery.of(context).size.width/3,
                        height: 36,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Color(0xff0095FF)),
                            color: Color(0xff0095FF)
                        ),
                        alignment: Alignment.center,
                        child: Text('Pull Request',
                          style: TextStyle(
                              fontFamily: 'semibold',
                              color: Colors.white
                          ),
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
    );
  }

}