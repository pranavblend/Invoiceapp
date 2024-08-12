import 'package:flutter/material.dart';
import 'package:invoiceui/view/update.dart';

class Profileui extends StatefulWidget {
  const Profileui({super.key});

  @override
  State<Profileui> createState() => _ProfileuiState();
}

class _ProfileuiState extends State<Profileui> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(height: 100,),
          Align(alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 54),
                child: Container(
                    height: size.height * .05,
                    width: size.width * .112,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(43, 42, 42,1),borderRadius: BorderRadius.circular(18)),
                    child: Icon(Icons.edit_note_rounded,color: Colors.white,size: 40,)),
              )),

          SizedBox(height: 35,),

          Stack(
            children: [
              Container(
                height: size.height*.6,
                width: size.width,
              ),
              Positioned(top: 45,left: 38,
                  child: Container(
                height: size.height*.4,
                width: size.width*.83,

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color:  Color.fromRGBO(20, 20, 20, 1)
                ),
              )
              ),

              Positioned(top:11,left:182,child: CircleAvatar(
                radius: 45,
                backgroundColor: Colors.black,
                child: Container(
                  height: size.height * .08,
                  width: size.width * .15,
                  color: Colors.transparent,
                  child: Image.asset("assets/emoji.png"),
                ),
              )),
              Positioned(top:330,left:78,child: InkWell(onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Updateui()));
              },
                child: Container(
                  height: size.height*.06,
                  width: size.width*.65,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.login,size: 25,color: Colors.red,),

                      SizedBox(width: 08,),
                      Text("Logout",style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                ),
              )
              ),

              Positioned(left: 120,top:120,child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Pranav",style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),),

                  Text("pranavudayaraj888@gmail.com",style: TextStyle(
                      color: Colors.blueAccent.withOpacity(.6),
                      fontWeight: FontWeight.bold,
                      fontSize: 14
                  ),),

                  SizedBox(height: 30,),


                  Text("Contact",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                  ),),

                  Text("7034626329",style: TextStyle(
                      color: Colors.blueAccent.withOpacity(.6),
                      fontWeight: FontWeight.bold,
                      fontSize: 14
                  ),),
                ],
              ))
            ],
          )

        ],
      )
    );
  }
}
