import 'package:flutter/material.dart';
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
import 'package:guruzone/styles/texts/h1.dart';
import 'package:guruzone/styles/texts/h2.dart';
import 'package:guruzone/styles/texts/inputFieldSheet.dart';

final GlobalKey<ScaffoldState> _scaffoldKey =GlobalKey<ScaffoldState>();

class guruScreen extends StatefulWidget {
  const guruScreen({super.key});

  @override
  State<guruScreen> createState() => _guruScreenState();
}

class _guruScreenState extends State<guruScreen> {

  String typeCheck = "100% Personalized";


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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(backgroundColor: background,shadowColor: Color(0xFFF8F8F8) ,surfaceTintColor: background,title: Row(
        children: [
          Expanded(child: Text("Post Requiremnets",style: h1)),
          
          Container(
            width: 55,
            height: 50,
            decoration: boxTextInput,
            child: TextButton(
              onPressed: (){
                String topic = _topic.text.trim();
                String desc = _desc.text.trim();
                String lang = _lang.text.trim();
                String amount = _amount.text.trim();
                String type= _type.toString();
                String platform = _platform.text.trim();
                String city = _city.text.trim();
                String category = _category.text.trim();
                if(topic.isNotEmpty && desc.isNotEmpty && lang.isNotEmpty && amount.isNotEmpty && type.isNotEmpty && platform.isNotEmpty && city.isNotEmpty && category.isNotEmpty)
                {

                  setState(() {


                    _topic.text="";
                    _desc.text="";
                    _lang.text="";
                    _amount.text="";
                    _type="";
                    _platform.text="";
                    _city.text="";
                    _category.text="";
                    postlists[selectedIndex].topic=topic;
                    postlists[selectedIndex].desc=desc;
                    postlists[selectedIndex].lang=lang;
                    postlists[selectedIndex].amount=amount;
                    postlists[selectedIndex].type=type;
                    postlists[selectedIndex].platform=platform;
                    postlists[selectedIndex].city=city;
                    postlists[selectedIndex].category=category;
                    selectedIndex = -1;
                  });
                }


              },
              child: const Icon(Icons.add,color: Colors.grey),
            ),
          ),
        ],
      ), ),
      resizeToAvoidBottomInset: true,
      body: Container(
        color: background,
        child: Column(
          children: [
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

                                  setState(() {


                                  });

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
                                            setState(() {
                                              print(typeCheck);
                                              print('set state');
                                              _type='100% Personalized';
                                              typeCheck='Partially Personalized';
                                            });
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
                                          setState(() {
                                            _topic.text="";
                                            _desc.text="";
                                            _lang.text="";
                                            _amount.text="";
                                            _type="";
                                            _platform.text="";
                                            _city.text="";
                                            _category.text="";
                                            postlists.add(PostList(topic: topic, desc: desc, lang: lang, amount: amount, type: type, platform: platform, city: city, category: category));
                                          });
                                        }
                                        Navigator.of(context).pop();
                                      },
                                          child: Text("Post Requirement",
                                            style: TextStyle(color: Colors.white,fontFamily: 'bold'),
                                          )
                                      ),
                                    ),

                                  ),
                                  SizedBox(height: 20,),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }
                    );
              },
              child: Container(
                alignment: Alignment.center,
                  height: 150,
                  margin: EdgeInsets.only(left: 25,right: 25),
                  width: double.infinity,
                  decoration: backgroundWhite,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Image.asset('assets/images/img.png',height: 50),
                      ),
                      SizedBox(height: 15,),
                      Center(
                        child: Text("Post Requirement for Guru",style: h2,),


              ),
                    ],
                  )),
            ),
            SizedBox(height: 10,),
            postlists.isEmpty ? Text("No Posted Requiremnets yet...", style: d1)
            : Expanded(
              child: ListView.builder(
                itemCount: postlists.length,
                  itemBuilder: (context, index) => getRow(index)
                  ),
            )
          ],
        ),
      ));
  }

 Widget getRow(int index) {
  return Container(
    decoration: backgroundWhite,
    margin: EdgeInsets.only(top: 10,left: 25,right: 25),

    child: ListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

            Row(
            mainAxisAlignment: MainAxisAlignment.end,
                  children: [

                    InkWell(
                      onTap: (){

                        _topic.text =postlists[index].topic;
                        _desc.text =postlists[index].desc;
                        _lang.text =postlists[index].lang;
                        _amount.text =postlists[index].amount;
                        _type =postlists[index].type;
                        _platform.text =postlists[index].platform;
                        _city.text =postlists[index].city;
                        _category.text =postlists[index].category;

                        setState(() {
                          selectedIndex =index;
                        });




                      },

                        child: const Icon(Icons.edit)),
                    SizedBox(width: 20.0),
                    InkWell(
                      onTap: (){

                        setState(() {

                          postlists.removeAt(index);
                        });

                      },

                        child:  const Icon(Icons.delete_outline_rounded)),
                ],
          ),


          Text(postlists[index].topic, style: h1,overflow: TextOverflow.ellipsis,maxLines: 1,),
          Text(postlists[index].desc,style: d1Light,overflow: TextOverflow.ellipsis,maxLines: 1,),
          SizedBox(height: 5,),
          Text("This Request sent to All Mentor", style: blueRegular,),
          SizedBox(height: 5,),
          Row(
            children: [
              Container(
                alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 4,bottom: 4,left: 15,right: 15),
                  decoration: backgroundWhite,child: Text(postlists[index].lang,style: d1,overflow: TextOverflow.ellipsis,)),

              SizedBox(width: 5),
              Container(
                alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 4,bottom: 4,left: 15,right: 15),
                  decoration: backgroundWhite,child: Text(postlists[index].type,style: d1,overflow: TextOverflow.ellipsis,)),
            ],
          ),
          SizedBox(height: 5,),
          Row(
            children: [
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 4,bottom: 4,left: 15,right: 15),
                  decoration: backgroundWhite,child: Text(postlists[index].category,style: d1,overflow: TextOverflow.ellipsis,)),

              SizedBox(width: 5),
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 4,bottom: 4,left: 15,right: 15),
                  decoration: backgroundWhite,child: Text(postlists[index].city,style: d1,overflow: TextOverflow.ellipsis,)),
            ],
          ),

          SizedBox(height: 5,),
          Row(
            children: [
              Container(

                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 4,bottom: 4,left: 15,right: 15),
                  decoration: backgroundWhite,child: Text(postlists[index].platform,style: d1,overflow: TextOverflow.ellipsis,)),


              SizedBox(width: 5,),
              Expanded(child: Container(alignment: Alignment.center,margin: EdgeInsets.only(right: 15),decoration: backgroundWhite,padding: EdgeInsets.only(top: 4,bottom: 4,left: 14,right: 14),child: Text('You are ready to pay ${postlists[index].amount}',style: blueSmall,overflow: TextOverflow.ellipsis,maxLines: 1,))),

            ],
          ),



          SizedBox(height: 20,)


        ],

    ),
          ),
    );


 }
}
