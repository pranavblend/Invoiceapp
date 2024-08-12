import 'package:flutter/material.dart';
import 'package:invoiceui/view/profile.dart';

class Revenueui extends StatefulWidget {
  const Revenueui({super.key});

  @override
  State<Revenueui> createState() => _RevenueuiState();
}

class _RevenueuiState extends State<Revenueui> {
  bool isSelected01 = false;
  bool isSelected02 = false;
  bool isSelected03 = false;
  bool isSelected04 = false;
  bool isSelected05 = false;
  bool isSelected06 = false;
  bool avatarSelected=false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(appBar: AppBar(
      automaticallyImplyLeading: true,
    ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Container(
                  height: size.height * .07,
                  width: size.width * .38,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                          image: AssetImage("assets/TrialZ.png"),
                          fit: BoxFit.cover)),
                ),
              ),
              SizedBox(
                width: 150,
              ),
              Stack(
                children: [
                  Container(
                    height: size.height*.07,
                    width: size.width*.14,
                    child: InkWell(borderRadius: BorderRadius.circular(50),radius: 15,hoverColor: Colors.green,highlightColor: Colors.transparent,splashColor: Colors.transparent,
                      onTap: (){
                      setState(() {
                        avatarSelected=!avatarSelected;
                      });
                    },
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Color.fromRGBO(20, 20, 20, 1),
                        child: Container(
                          height: size.height * .06,
                          width: size.width * .12,
                          color: Colors.transparent,
                          child: Image.asset("assets/emoji.png"),
                        ),
                      ),
                    ),
                  ),
                  Positioned(left:40,child: InkWell(onTap: (){

                  },
                    child: CircleAvatar(
                      radius: 8,backgroundColor:avatarSelected ?Colors.green: Colors.red,
                    ),
                  ))
                ],
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Stack(
            children: [
              Container(
                height: size.height * .45,
                width: size.width * .9,
                color: Colors.transparent,
                child: Image.asset("assets/Revenue.png"),
              ),
              // Positioned(
              //     top: 320,
              //     child: Expanded(
              //       child: ListView.builder(scrollDirection: Axis.horizontal,
              //         itemCount: _chips.length,
              //         itemBuilder: (context, index) => SizedBox(
              //           height: 60,
              //           width: 55,
              //           child: ChoiceChip(
              //               label: Text(_chips[index],
              //                 style: TextStyle(
              //                     fontSize: 13,
              //                     fontWeight: FontWeight.bold,
              //                     color: Colors.white),
              //               ),
              //               selected: isSelected,
              //               showCheckmark: false,
              //               selectedColor: Colors.blueAccent,
              //               backgroundColor: Color.fromRGBO(20, 20, 20, 1),
              //               side: BorderSide(
              //                   color: Color.fromRGBO(20, 20, 20, 1)),
              //               onSelected: (newstate) {
              //                 setState(() {
              //                   isSelected = newstate;
              //                 });
              //               }),
              //         ),
              //       ),
              //     )),

              Positioned(top: 345,left:38,child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                  ChoiceChip(
                      label: Text("01",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      selected: isSelected01,
                      showCheckmark: false,
                      selectedColor: Colors.blueAccent,
                      backgroundColor: Color.fromRGBO(20, 20, 20, 1),
                      side: BorderSide(
                          color: Color.fromRGBO(20, 20, 20, 1)),
                      onSelected: (newstate) {
                        setState(() {
                          isSelected01 =newstate;
                        });
                      }),

                  SizedBox(width: 6,),
                  ChoiceChip(
                      label: Text("02",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      selected: isSelected02,
                      showCheckmark: false,
                      selectedColor: Colors.blueAccent,
                      backgroundColor: Color.fromRGBO(20, 20, 20, 1),
                      side: BorderSide(
                          color: Color.fromRGBO(20, 20, 20, 1)),
                      onSelected: (newstate) {
                        setState(() {
                          isSelected02 =newstate;
                        });
                      }),


                  SizedBox(width: 6,),
                  ChoiceChip(
                      label: Text("03",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      selected: isSelected03,
                      showCheckmark: false,
                      selectedColor: Colors.blueAccent,
                      backgroundColor: Color.fromRGBO(20, 20, 20, 1),
                      side: BorderSide(
                          color: Color.fromRGBO(20, 20, 20, 1)),
                      onSelected: (newstate) {
                        setState(() {
                          isSelected03 = newstate;
                        });
                      }),
                  SizedBox(width: 6,),
                  ChoiceChip(
                      label: Text("04",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      selected: isSelected04,
                      showCheckmark: false,
                      selectedColor: Colors.blueAccent,
                      backgroundColor: Color.fromRGBO(20, 20, 20, 1),
                      side: BorderSide(
                          color: Color.fromRGBO(20, 20, 20, 1)),
                      onSelected: (newstate) {
                        setState(() {
                          isSelected04 = newstate;
                        });
                      }),

                  SizedBox(width: 6,),
                  ChoiceChip(
                      label: Text("05",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      selected: isSelected05,
                      showCheckmark: false,
                      selectedColor: Colors.blueAccent,
                      backgroundColor: Color.fromRGBO(20, 20, 20, 1),
                      side: BorderSide(
                          color: Color.fromRGBO(20, 20, 20, 1)),
                      onSelected: (newstate05) {
                        setState(() {
                          isSelected05 = newstate05;
                        });
                      }),

                  SizedBox(width: 6,),
                  ChoiceChip(
                      label: Text("06",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      selected: isSelected06,
                      showCheckmark: false,
                      selectedColor: Colors.blueAccent,
                      backgroundColor: Color.fromRGBO(20, 20, 20, 1),
                      side: BorderSide(
                          color: Color.fromRGBO(20, 20, 20, 1)),
                      onSelected: (newstate) {
                        setState(() {
                          isSelected06 = newstate;
                        });
                      }),

                ],),
              ))
            ],
          ),

          SizedBox(height: 20,),

          InkWell(onTap: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Profileui()));
          },
            child: Container(
              height: size.height*.158,
              width: size.width*.83,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color:  Color.fromRGBO(20, 20, 20, 1)
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Container(
                      height: size.height * .13,
                      width: size.width * .16,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                              image: AssetImage("assets/icon1.png"),
                              fit: BoxFit.contain)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Bookings",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w400),),
                        Text("123",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w400),),
                        Text("Reserved",style: TextStyle(color: Colors.white.withOpacity(.4),fontSize: 16,fontWeight: FontWeight.w400),)
                      ],
                    ),
                  ),

                  SizedBox(width: 80,),

                  Container(
                    height: size.height * .09,
                    width: size.width * .2,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(43, 42, 42,1),borderRadius: BorderRadius.circular(28)),
                    child: Icon(Icons.arrow_forward_rounded,size: 32,color: Colors.white.withOpacity(.6),),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
