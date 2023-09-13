import 'package:flutter/material.dart';
import 'package:guruzone/screens/logInScreenMentor.dart';
import 'package:guruzone/styles/backgrounds/backgroundWhite.dart';
import 'package:guruzone/styles/backgrounds/boxTextInput.dart';
import 'package:guruzone/styles/backgrounds/choiceDisable.dart';
import 'package:guruzone/styles/backgrounds/choiceEnable.dart';
import 'package:guruzone/styles/backgrounds/roundedBlue.dart';
import 'package:guruzone/styles/colors.dart';
import 'package:guruzone/styles/texts/blueRegular.dart';
import 'package:guruzone/styles/texts/d1.dart';
import 'package:guruzone/styles/texts/d1Light.dart';
import 'package:guruzone/styles/texts/d2Light.dart';
import 'package:guruzone/styles/texts/h1.dart';
import 'package:guruzone/styles/texts/h2.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';
import 'package:multi_select_flutter/util/multi_select_list_type.dart';
import 'package:permission_handler/permission_handler.dart';

class signUpScreenMentor extends StatefulWidget {
  const signUpScreenMentor({super.key});



  @override
  State<signUpScreenMentor> createState() => _signUpScreenMentorState();
}
class SkillSet {
  final int id;
  final String name;

  SkillSet({
    required this.id,
    required this.name,
  });

  @override
  String toString() {
    // TODO: implement toString
    return name;
  }
}

class _signUpScreenMentorState extends State<signUpScreenMentor> {

  static List<SkillSet> _skills = [
    SkillSet(id: 1, name: "Flutter"),
    SkillSet(id: 2, name: "Figma"),
    SkillSet(id: 3, name: "Politics"),
    SkillSet(id: 4, name: "Android"),
    SkillSet(id: 5, name: "Web"),
    SkillSet(id: 6, name: "NodeJs"),
    SkillSet(id: 7, name: "Angular"),
    SkillSet(id: 8, name: "Marketing"),
    SkillSet(id: 9, name: "Java"),
    SkillSet(id: 10, name: "Java Advance"),
    SkillSet(id: 11, name: "C/C++"),
    SkillSet(id: 12, name: "Python"),
    SkillSet(id: 13, name: "AI"),
    SkillSet(id: 14, name: "Machine Learning"),
    SkillSet(id: 15, name: "Data Science"),
    SkillSet(id: 16, name: "Leadership"),
    SkillSet(id: 17, name: "Communication Skill"),
    SkillSet(id: 18, name: "DSA"),
    SkillSet(id: 19, name: "DBMS"),
    SkillSet(id: 20, name: "Software Engineering"),
    SkillSet(id: 21, name: "DAA"),
    SkillSet(id: 22, name: "DevOps"),
    SkillSet(id: 23, name: "Git"),
    SkillSet(id: 24, name: "Cyber Security"),
    SkillSet(id: 25, name: "Hacking"),
    SkillSet(id: 26, name: "Krushang"),

  ];
  final _items = _skills
      .map((skill) => MultiSelectItem<SkillSet>(skill, skill.name))
      .toList();

  List<SkillSet> _selectedSkillSets2 = [];
  List<SkillSet> _selectedSkillSets3 = [];
  
  List<SkillSet> _selectedSkillSets5 = [];
  final _multiSelectKey = GlobalKey<FormFieldState>();


  @override
  void initState() {
    _selectedSkillSets5 = _skills;
    super.initState();
  }

  var controllerName = TextEditingController();
  var controllerQualification = TextEditingController();
  var controllersmallDes = TextEditingController();
  var controllerEmail = TextEditingController();
  var controllerNum = TextEditingController();
  var controllerLinkedIn = TextEditingController();
  var controllerSkillSet = TextEditingController();
  var controllerPass = TextEditingController();
  var teachingType ='empty';
  var notEmpty='noOne';
  bool locationPermission=false;

  FocusNode _focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.only(top: 20,right: 25,left: 25),
        color: background,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Container(
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [


                  SizedBox(height: 50,),
                  Text('GuruZone',style: TextStyle(fontFamily: 'bold',fontSize: 25,color: darkText),),
                  Text('Let\'s ready to serve knowledge!',style: TextStyle(fontFamily: 'regular',fontSize: 16,color: darkText),),

                  SizedBox(height: 20,),

                  //name i
                  Container(
                    decoration: boxTextInput,
                    height: 55,width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: 20,),
                        Icon(Icons.account_circle_outlined,color: darkText,),
                        SizedBox(width: 20,),
                        Container(width: 1,color: borderColor,height: 25,),
                        SizedBox(width: 10,),
                        Container(width: MediaQuery.of(context).size.width/1.5,height: 50,
                          alignment: Alignment.center,
                          child: TextField(
                            keyboardType: TextInputType.name,
                            controller: controllerName,
                            style:TextStyle(fontFamily: 'regular',fontSize: 16,overflow:TextOverflow.ellipsis),
                            textAlignVertical: TextAlignVertical.bottom,
                            decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color: notEmpty=='name'? Colors.red:borderColor,width: 1)),
                              hintText: 'Name',hintStyle: TextStyle(fontFamily: 'regular'),
                              filled: true,
                              fillColor: _focusNode.hasFocus ? Colors.white : Colors.white,
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14),
                                  borderSide: const BorderSide(
                                      color: Colors.white,
                                      width: 1,
                                      style: BorderStyle.solid
                                  )
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14),
                                  borderSide:  BorderSide(
                                    color: notEmpty == 'name' ? Colors.red:Colors.white,
                                  )
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14),
                                  borderSide:  BorderSide(
                                    width: 1,
                                    color:notEmpty == 'name' ? Colors.red:Colors.white
                                  )
                              ),

                            ),
                          ),),
                      ],
                    ),
                  ),

                  //Qualification
                  SizedBox(height: 8,),
                  Container(
                    decoration: boxTextInput,
                    height: 55,width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: 20,),
                        Icon(Icons.menu_book,color: darkText,),
                        SizedBox(width: 20,),
                        Container(width: 1,color: borderColor,height: 25,),
                        SizedBox(width: 10,),
                        Container(width: MediaQuery.of(context).size.width/1.5,height: 50,
                          alignment: Alignment.center,
                          child: TextField(
                            keyboardType: TextInputType.name,
                            controller: controllerQualification,
                            style:TextStyle(fontFamily: 'regular',fontSize: 16,overflow:TextOverflow.ellipsis),
                            textAlignVertical: TextAlignVertical.bottom,
                            decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color: borderColor,width: 1)),
                              hintText: 'Qualification',hintStyle: TextStyle(fontFamily: 'regular'),
                              filled: true,
                              fillColor: _focusNode.hasFocus ? Colors.white : Colors.white,
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14),
                                  borderSide: const BorderSide(
                                      color: Colors.white,
                                      width: 1,
                                      style: BorderStyle.solid
                                  )
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14),
                                  borderSide:  BorderSide(
                                    color: notEmpty == 'qualification' ? Colors.red:Colors.white,
                                  )
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14),
                                  borderSide:  BorderSide(
                                    width: 1,
                                    color: notEmpty == 'qualification' ? Colors.red:Colors.white,
                                  )
                              ),

                            ),
                          ),),
                      ],
                    ),
                  ),

                  //Small Dex
                  SizedBox(height: 8,),
                  Container(
                    decoration: boxTextInput,
                    width: double.infinity,
                    height: 150,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 20,),
                        Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Icon(Icons.description_outlined,color: darkText,),
                        ),
                        SizedBox(width: 20,),
                        Padding(
                          padding: const EdgeInsets.only(top: 22),
                          child: Container(width: 1,color: borderColor,height: 25,),
                        ),
                        SizedBox(width: 10,),
                        Container(width: MediaQuery.of(context).size.width/1.5,height: 200,
                          alignment: Alignment.topLeft,
                          child: TextField(
                            keyboardType: TextInputType.name,
                            controller: controllersmallDes,
                            style:TextStyle(fontFamily: 'regular',fontSize: 16,overflow:TextOverflow.ellipsis),
                            textAlignVertical: TextAlignVertical.top,
                            maxLines: 5,
                            decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color: notEmpty == 'name' ? red:borderColor,width: 1)),
                              hintText: 'Small description about you\nEx: I can teach very easily with\ndeep examination, And I am also good in Local language',hintStyle: TextStyle(fontFamily: 'regular',),
                              filled: true,
                              fillColor: _focusNode.hasFocus ? Colors.white : Colors.white,
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14),
                                  borderSide: const BorderSide(
                                      color: Colors.white,
                                      width: 1,
                                      style: BorderStyle.solid
                                  )
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14),
                                  borderSide:  BorderSide(
                                    color:  notEmpty == 'qualification' ? Colors.red:Colors.white,
                                  )
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14),
                                  borderSide:  BorderSide(
                                    width: 1,
                                    color: notEmpty == 'qualification' ? Colors.red:Colors.white,
                                  )
                              ),

                            ),
                          ),),




                      ],
                    ),
                  ),

                  //email
                  SizedBox(height: 8,),
                  Container(
                    decoration: boxTextInput,
                    height: 55,width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: 20,),
                        Icon(Icons.email_outlined,color: darkText,),
                        SizedBox(width: 20,),
                        Container(width: 1,color: borderColor,height: 25,),
                        SizedBox(width: 10,),
                        Container(width: MediaQuery.of(context).size.width/1.5,height: 50,
                          alignment: Alignment.center,
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            controller: controllerEmail,
                            style:TextStyle(fontFamily: 'regular',fontSize: 16,overflow:TextOverflow.ellipsis),
                            textAlignVertical: TextAlignVertical.bottom,
                            decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color: borderColor,width: 1)),
                              hintText: 'Email',hintStyle: TextStyle(fontFamily: 'regular'),
                              filled: true,
                              fillColor: _focusNode.hasFocus ? Colors.white : Colors.white,
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14),
                                  borderSide: const BorderSide(
                                      color: Colors.white,
                                      width: 1,
                                      style: BorderStyle.solid
                                  )
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14),
                                  borderSide:  BorderSide(
                                    color: Colors.white,
                                  )
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14),
                                  borderSide:  BorderSide(
                                    width: 1,
                                    color: Colors.white,
                                  )
                              ),

                            ),
                          ),),




                      ],
                    ),
                  ),


                  //password
                  SizedBox(height: 8,),
                  Container(
                    decoration: boxTextInput,
                    height: 55,width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: 20,),
                        Icon(Icons.password_outlined,color: darkText,),
                        SizedBox(width: 20,),
                        Container(width: 1,color: borderColor,height: 25,),
                        SizedBox(width: 10,),
                        Container(width: MediaQuery.of(context).size.width/1.5,height: 50,
                          alignment: Alignment.center,
                          child: TextField(
                            obscureText: true,
                            obscuringCharacter: '*',
                            controller: controllerPass,
                            style:TextStyle(fontFamily: 'regular',fontSize: 16,overflow:TextOverflow.ellipsis),
                            textAlignVertical: TextAlignVertical.bottom,
                            decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color: borderColor,width: 1)),
                              hintText: 'Password',hintStyle: TextStyle(fontFamily: 'regular'),
                              filled: true,
                              fillColor: _focusNode.hasFocus ? Colors.white : Colors.white,
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14),
                                  borderSide: const BorderSide(
                                      color: Colors.white,
                                      width: 1,
                                      style: BorderStyle.solid
                                  )
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14),
                                  borderSide:  BorderSide(
                                    color: Colors.white,
                                  )
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14),
                                  borderSide:  BorderSide(
                                    width: 1,
                                    color: Colors.white,
                                  )
                              ),

                            ),
                          ),),




                      ],
                    ),
                  ),

                  //number
                  SizedBox(height: 8,),
                  Container(
                    decoration: boxTextInput,
                    height: 55,width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: 20,),
                        Icon(Icons.call_outlined,color: darkText,),
                        SizedBox(width: 20,),
                        Container(width: 1,color: borderColor,height: 25,),
                        SizedBox(width: 10,),
                        Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: Text('+ 91',style:TextStyle(fontFamily: 'regular',fontSize: 16,overflow:TextOverflow.ellipsis),),
                        ),
                        Container(width: MediaQuery.of(context).size.width/2,height: 50,
                          alignment: Alignment.center,
                          child: TextField(
                            keyboardType: TextInputType.numberWithOptions(),
                            controller: controllerNum,
                            style:TextStyle(fontFamily: 'regular',fontSize: 16,overflow:TextOverflow.ellipsis),
                            textAlignVertical: TextAlignVertical.bottom,
                            decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color: borderColor,width: 1)),
                              hintText: 'Number',hintStyle: TextStyle(fontFamily: 'regular'),
                              filled: true,
                              fillColor: _focusNode.hasFocus ? Colors.white : Colors.white,
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14),
                                  borderSide: const BorderSide(
                                      color: Colors.white,
                                      width: 1,
                                      style: BorderStyle.solid
                                  )
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14),
                                  borderSide:  BorderSide(
                                    color: Colors.white,
                                  )
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14),
                                  borderSide:  BorderSide(
                                    width: 1,
                                    color: Colors.white,
                                  )
                              ),

                            ),
                          ),),




                      ],
                    ),
                  ),

                  //linkedIn profile
                  SizedBox(height: 8,),
                  Container(
                    decoration: boxTextInput,
                    height: 55,width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: 20,),
                        Icon(Icons.numbers,color: darkText,),
                        SizedBox(width: 20,),
                        Container(width: 1,color: borderColor,height: 25,),
                        SizedBox(width: 10,),


                        Container(width: MediaQuery.of(context).size.width/2,height: 50,
                          alignment: Alignment.center,
                          child: TextField(

                            controller: controllerLinkedIn,
                            style:TextStyle(fontFamily: 'regular',fontSize: 16,overflow:TextOverflow.ellipsis),
                            textAlignVertical: TextAlignVertical.bottom,
                            decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color: borderColor,width: 1)),
                              hintText: 'LinkedIn Profile Link',hintStyle: TextStyle(fontFamily: 'regular'),
                              filled: true,
                              fillColor: _focusNode.hasFocus ? Colors.white : Colors.white,
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14),
                                  borderSide: const BorderSide(
                                      color: Colors.white,
                                      width: 1,
                                      style: BorderStyle.solid
                                  )
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14),
                                  borderSide:  BorderSide(
                                    color: Colors.white,
                                  )
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14),
                                  borderSide:  BorderSide(
                                    width: 1,
                                    color: Colors.white,
                                  )
                              ),

                            ),
                          ),),




                      ],
                    ),
                  ),

                  //teachingType
                  SizedBox(height: 8,),
                  Container(
                    decoration: boxTextInput,
                    width: double.infinity,
                    padding: EdgeInsets.only(bottom: 10),
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(width: 20,),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Icon(Icons.book_outlined,color: darkText,),
                              ),
                              SizedBox(width: 20,),
                              Padding(
                                padding: const EdgeInsets.only(top: 18),
                                child: Container(width: 1,color: borderColor,height: 25,),
                              ),
                              SizedBox(width: 10,),
                              Padding(
                                padding: const EdgeInsets.only(top: 15,left: 10),
                                child: Container(width: 220,child: Text('Which type of service can you provide?',style: TextStyle(fontSize: 16,fontFamily: 'regular',color: Color(0xFF6a6a6a)),maxLines: 2)),
                              )

                            ],
                          ),
                        ),

                        Container(

                          child:
                          Column(
                            children: [
                              SizedBox(height: 5,),
                              InkWell(
                                onTap: (){

                                  setState(() {
                                    teachingType='100% Personalized';
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.only(left: 65,right: 20,top: 10),
                                  width:double.infinity,
                                  height: 50,
                                  decoration: teachingType=='100% Personalized' ? choiceEnable :choiceDisable,
                                  alignment: Alignment.center,
                                  child: Text('100 % Personalized',style: TextStyle(color: teachingType=='100% Personalized' ?Colors.white : Color(0xff6a6a6a),fontFamily: 'regular')),
                                ),
                              ),

                              InkWell(
                                onTap: (){
                                  setState(() {
                                    teachingType='Partially Personalized';

                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.only(left: 65,right: 20,top: 10),
                                  width:double.infinity,
                                  height: 50,
                                  decoration: teachingType=='Partially Personalized' ? choiceEnable :choiceDisable,
                                  alignment: Alignment.center,
                                  child: Text('Partially Personalized',style: TextStyle(color: teachingType=='Partially Personalized' ?Colors.white :Color(0xff6a6a6a),fontFamily: 'regular')),
                                ),
                              ),


                              InkWell(
                                onTap: (){
                                  setState(() {
                                    teachingType='Both';
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.only(left: 65,right: 20,top: 10),
                                  width:double.infinity,
                                  height: 50,
                                  decoration: teachingType=='Both' ? choiceEnable :choiceDisable,
                                  alignment: Alignment.center,
                                  child: Text('Both',style: TextStyle(color: teachingType=='Both' ?Colors.white :Color(0xff6a6a6a),fontFamily: 'regular')),
                                ),
                              )
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),

                  //skills
                  SizedBox(height: 10,),
                  Container(
                    decoration: boxTextInput,
                    width: double.infinity,
                    padding: EdgeInsets.only(bottom: 10),
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(width: 20,),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Icon(Icons.stacked_line_chart,color: darkText,),
                              ),
                              SizedBox(width: 20,),
                              Padding(
                                padding: const EdgeInsets.only(top: 18),
                                child: Container(width: 1,color: borderColor,height: 25,),
                              ),
                              SizedBox(width: 10,),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child:Container(
                                  width: MediaQuery.of(context).size.width/1.5,
                                  child: MultiSelectDialogField(
                                    buttonIcon: Icon(Icons.arrow_circle_down,color: darkText),
                                    title: Text('Skills',style: TextStyle(fontSize: 16,fontFamily: 'regular',color: Color(0xFF6a6a6a))),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    buttonText: Text('Touch here to Select Skills',style: TextStyle(fontSize: 16,fontFamily: 'regular',color: Color(0xFF6a6a6a)),overflow: TextOverflow.ellipsis),
                                    items: _skills.map((e) => MultiSelectItem(e, e.name)).toList(),
                                    listType: MultiSelectListType.CHIP,
                                    unselectedColor: Colors.white,
                                    itemsTextStyle: TextStyle(fontFamily: 'regular',color: darkText),
                                    searchTextStyle: TextStyle(fontFamily: 'regular'),
                                    confirmText: Text('Select',style: TextStyle(fontFamily: 'semibold',color: blue,fontSize: 18)),
                                    cancelText: Text('Cancel',style: TextStyle(fontFamily: 'semibold',color: blue,fontSize: 18)),
                                    // selectedColor: Colors.blue,
                                    backgroundColor: background,
                                    onConfirm: (values) {
                                      _selectedSkillSets2 = values;
                                      List<String> selectedNames = _selectedSkillSets2.map((skillSet) => skillSet.name).toList();
                                      print("Selected items: $selectedNames");

                                    },
                                  ),
                                ),
                              )

                            ],
                          ),
                        ),






                      ],
                    ),
                  ),

                  //Location Permission
                  SizedBox(height: 8,),
                  InkWell(

                    onTap: () {
                      print('clicked on permission btn');
                      checkpermission(Permission.location, context);
                    },
                    child: Container(
                      decoration: boxTextInput,
                      width: double.infinity,
                      padding: EdgeInsets.only(bottom: 10),
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(width: 20,),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Icon(Icons.location_on_outlined,color: darkText,),
                                ),
                                SizedBox(width: 20,),
                                Padding(
                                  padding: const EdgeInsets.only(top: 18),
                                  child: Container(width: 1,color: borderColor,height: 25,),
                                ),
                                SizedBox(width: 10,),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15,left: 10),
                                  child: Text('Allow Location Permission',style: TextStyle(fontSize: 16,fontFamily: 'regular',color: darkText),),
                                )

                              ],
                            ),
                          ),





                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 15,),


                  //login Btn
                  InkWell(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>logInScreenMentor()));
                    },
                    child: Container(
                      alignment: Alignment.topRight,
                      child: Text('Already have an account ?',style: blueRegular),
                    ),
                  ),

                  SizedBox(
                    height: 30,
                  ),

                  //signUp Btn
                  InkWell(
                    onTap: (){

                      setState(()  {
                        String name = controllerName.text;
                        String qualification = controllerQualification.text;
                        String des=controllersmallDes.text;
                        String email=controllerEmail.text;
                        String phone=controllerNum.text;
                        String linkedin=controllerLinkedIn.text;
                        String pass=controllerPass.text;
                        String teachType =teachingType.toString();
                        var skill = _selectedSkillSets2.toString();



                            if( pass.length >6 && locationPermission==true && name != null && name.isNotEmpty && qualification !=null && qualification.isNotEmpty && des!=null && des.isNotEmpty && email!=null && email.isNotEmpty && phone!=null && phone.isNotEmpty && linkedin!=null && linkedin.isNotEmpty && teachingType!='empty' && skill.length>1)
                            {


                              print('$name + $qualification + $des+ $email+ $phone+ $linkedin + $teachType + $skill +$pass ');
                              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Account Created Successfully, Please Login.',style: TextStyle(fontFamily: 'semibold'),),duration: Duration(seconds: 4),backgroundColor: Colors.blue,behavior: SnackBarBehavior.floating,));
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>logInScreenMentor()));
                            }
                            else
                            {
                              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Something went wrong.',style: TextStyle(fontFamily: 'semibold'),),duration: Duration(seconds: 2),backgroundColor: Colors.red,behavior: SnackBarBehavior.floating,));

                            }
                          }



                      );




                      },
                    child: Container(
                      decoration: roundedBlue,
                      height: 55,
                      alignment: Alignment.center,
                      child: Text('SignUp',style: TextStyle(color: Colors.white,fontSize: 17,fontFamily: 'semibold')),

                    ),
                  ),
                  SizedBox(height: 50,),
                  Center(child: Text('@All Right Resversed 2023\n            GuruZone ©',style: d1Light,)),
                  SizedBox(height: 150,),





                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  
  Future<void>checkpermission(Permission permission,BuildContext context) async
  {
    final status = await permission.request();
    if(status.isGranted)
      {
        locationPermission=true;
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Permission Granted',style: TextStyle(fontFamily: 'semibold'),)));
      }
    else
      {
        final status = await permission.request();
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Permission not Granted',style: TextStyle(fontFamily: 'semibold'),)));
      }
  }
}
