import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  String n1 =
      """Iron Man begins with Tony Stark ( Robert Downey Jr.).The billionaire playboy"" 
       ""with a big ego (and his own personal demon in a bottle) is the son of defense"" 
       ""contractors Howard Stark.Tony has inherited Stark Industries from him,and the ""
        ""job takes him to war-torn Afghanistan.There, with his friend,Lieutenant Colonel"" 
        ""James Rhodes (Terrence Howard),they demonstrate the new “Jericho” missile.After"" 
        ""this little presentation ends,Stark and Rhodes’ convoy comes under attack,The te-""
        ""rrorist group, the Ten Rings, attacks them, and one of their missiles badly injur-""
        ""es Stark. They capture him, and take him to their cave where fellow captive.""";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          title: Text(
            'Marvel Character',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Container(
            //color: Colors.black12,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 6),
                  height: MediaQuery.of(context).size.height * 0.47,
                  width: MediaQuery.of(context).size.width * 0.97,
                  child: Image.asset("assets/images/ironman.png"),
                  decoration:
                      BoxDecoration(color: Colors.white, boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 4,
                      spreadRadius: 1,
                      offset: Offset(0, 5),
                    )
                  ]),
                ),
                Container(
                  margin: EdgeInsets.only(top: 12),
                  height: MediaQuery.of(context).size.height * 0.10,
                  width: MediaQuery.of(context).size.width * 0.97,
                  child: RichText(
                    text: TextSpan(
                        text: "IRON MAN",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1,
                          wordSpacing: 1.5,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: "\n   TONY STARK",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.black38,
                            ),
                          ),
                        ]),
                  ),
                  alignment: Alignment(0, -0.25),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.deepOrangeAccent.withOpacity(0.4),
                        blurRadius: 5,
                        spreadRadius: 1,
                        offset: Offset(0, 5),
                        // offset: Offset.fromDirection(50)
                        // offset: Offset.fromDirection(0.5),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: MediaQuery.of(context).size.height * 0.98,
                  width: MediaQuery.of(context).size.width * 0.97,
                  color: Colors.white,
                  child: Text(
                    "${n1}",
                    // maxLines: 100,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.black.withOpacity(0.8),
                    ),
                  ),
                  alignment: Alignment(15, -0.94),
                )
              ],
            ),
          ),
        ));
  }
}
