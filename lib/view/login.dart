import 'package:flutter/material.dart';
import 'package:invoiceui/view/profile.dart';
import 'package:invoiceui/view/revenue.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Loginui extends StatefulWidget {
  const Loginui({super.key});

  @override
  State<Loginui> createState() => _LoginuiState();
}
final TextEditingController _username=TextEditingController();
final TextEditingController _password=TextEditingController();
bool? isChecked=false;

class _LoginuiState extends State<Loginui> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
        ),
        body: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/background.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: size.height * .035,
                        width: size.width * .07,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/Vector.png"))),
                      ),
                      Text(
                        "English",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 200,
                ),
                Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Register to your account",
                  style: TextStyle(
                      color: Colors.white.withOpacity(.3),
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 400,
                  child: TextField(
                    controller: _username,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 20),
                      prefixIcon: Icon(
                        Icons.account_circle_sharp,
                        color: Color.fromRGBO(14, 116, 244, 1),
                        size: 28,
                      ),
                      hintText: "Username",
                      hintStyle: TextStyle(color: Colors.white.withOpacity(.5)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(14, 116, 244, 1),
                        ),
                      ),
                      filled: true,
                      fillColor: Color.fromRGBO(8, 19, 30, 1),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Color.fromRGBO(14, 116, 244, 1)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Color.fromRGBO(14, 116, 244, 1)),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Color.fromRGBO(14, 116, 244, 1)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 400,
                  child: TextField(
                    controller: _password,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 20),
                      prefixIcon: Icon(
                        Icons.account_circle_sharp,
                        color: Color.fromRGBO(14, 116, 244, 1),
                        size: 28,
                      ),
                      suffixIcon: Icon(Icons.remove_red_eye,
                          color: Color.fromRGBO(14, 116, 244, 1)),
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.white.withOpacity(.5)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(14, 116, 244, 1),
                        ),
                      ),
                      filled: true,
                      fillColor: Color.fromRGBO(8, 19, 30, 1),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Color.fromRGBO(14, 116, 244, 1)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Color.fromRGBO(14, 116, 244, 1)),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Color.fromRGBO(14, 116, 244, 1)),
                      ),
                    ),
                  ),
                ),
SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Remember me",style: TextStyle(color: Colors.blueAccent,fontSize: 16
                      ),),
                      Checkbox(activeColor: Colors.blueAccent,
                          checkColor: Colors.white,
                          value: isChecked, onChanged: (val){
                        setState(() {
                          isChecked=val;
                        });
                      })
                    ],
                  ),
                ),
            
            
                SizedBox(height: 35,),
                Text("Forgotten Password?",style: TextStyle(
                    color:Color.fromRGBO(14, 116, 244, 1) ,
                    fontSize: 14,
                    fontWeight: FontWeight.w400
                ),),
                SizedBox(height: 50,),
                // InkWell(onTap: (){},
                //   child: Container(
                //     height: size.height*.05,
                //     width: size.width*.29,
                //     decoration: BoxDecoration( color:Color.fromRGBO(14, 116, 244, 1),
                //         borderRadius: BorderRadius.circular(25)
                //
                //
                //     ),
                //     child: Row(mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Text("Sign Up",style: TextStyle(
                //             color: Colors.white,
                //             fontSize: 14,
                //             fontWeight: FontWeight.bold
                //         ),),
                //         SizedBox(width: 8,),
                //
                //         Icon(Icons.arrow_forward_rounded,color: Colors.white,)
                //       ],
                //     ),
                //   ),
                // ),
            
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 167),
                  child: MaterialButton(onPressed: save,color: Colors.blueAccent,
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text("Sign Up",style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                    ),),
                      SizedBox(width: 8,),

                      Icon(Icons.arrow_forward_rounded,color: Colors.white,),]
                  ),),
                ),
                SizedBox(height: 160,),
                Text("Dont have an account?",style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400
                ),),
                  
                SizedBox(height: 10,),
                Text("Sign up now!",style: TextStyle(
                    color:Color.fromRGBO(14, 116, 244, 1) ,
                    fontSize: 14,
                    fontWeight: FontWeight.w400
                ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
  void save()async{
   final localStorage=await SharedPreferences.getInstance();
    await localStorage.setString("Username", _username.text.toString());
   await localStorage.setString("Password", _password.text.toString()).then((value) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Profileui(),)),);
  }
}
