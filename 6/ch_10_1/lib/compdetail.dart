import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  String Complogo;
  String CeoName;
  String CompName;
  String Ceoimg;
  DetailScreen(this.CeoName, this.CompName, this.Complogo, this.Ceoimg,
      {Key? key})
      : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Detail Page",
          style: TextStyle(
            fontSize: 26,
            letterSpacing: 3,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Detailspage(
        image: "assets/ceo/elon_musk.png",
        title: "Elon Musk",
        Company_Logo: "assets/images/Tesla.png",
        Company_Name: "Tesla",
        description: "On Tesla company profile page, you can find a quick "
            "description of the company's mission and what it does. "
            "In just a few words, HubSpot explains that the company's goal "
            "is to help businesses grow through its specialized inbound software.",
      ),
    );
  }

  Detailspage(
      {required image,
      required title,
      required Company_Logo,
      required Company_Name,
      required description}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 60,
                backgroundImage: AssetImage("${widget.Ceoimg}"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${widget.CeoName}",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "CEO",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.withOpacity(0.8),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 25),
        Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            "Company Details",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Row(
          children: [
            Container(
              height: 140,
              child: Image.asset("${widget.Complogo}"),
            ),
            Text(
              "${widget.CompName}",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            "Company Description",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            "On ${widget.CompName} company profile page, you can find a quick "
            "description of the company's mission and what it does. "
            "In just a few words, ${widget.CompName} explains that the company's goal "
            "is to help businesses grow through its specialized inbound software.",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
