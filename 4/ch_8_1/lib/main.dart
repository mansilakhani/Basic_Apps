import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Product_Filter(),
  ));
}

class Product_Filter extends StatefulWidget {
  const Product_Filter({Key? key}) : super(key: key);

  @override
  State<Product_Filter> createState() => _Product_FilterState();
}

class _Product_FilterState extends State<Product_Filter> {
  double _currentValue = 30000;
  //double max = 80000;
  //double min = 0;

  @override
  Widget build(BuildContext context) {
    // double _height = MediaQuery.of(context).size.height * 0.098;
    // double _width = MediaQuery.of(context).size.width * 0.99;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Products Filter',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: const [Icon(Icons.apps_sharp)],
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Slider(
                  value: _currentValue,
                  min: 0,
                  max: 80000,
                  divisions: 100,
                  label: _currentValue.toString(),
                  onChanged: (value) {
                    setState(() {
                      _currentValue = value;
                    });
                  },
                ),
                Text(
                  "All Products < Rs. ${_currentValue.toInt()}",
                  //_currentValue.toString(),
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              flex: 8,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    (_currentValue >= 4500)
                        ? container("1", "Watch", "4500", "Wearable")
                        : Container(),
                    const SizedBox(height: 6),
                    (_currentValue >= 1450)
                        ? container("2", "Jeans", "1450", "Wearable")
                        : Container(),
                    const SizedBox(height: 6),
                    (_currentValue >= 35750)
                        ? container("3", "Refrigerator", "35750",
                            "Electrics and Electronics")
                        : Container(),
                    const SizedBox(height: 6),
                    (_currentValue >= 850)
                        ? container("4", "T-shirt", "850", "Wearable")
                        : Container(),
                    const SizedBox(height: 6),
                    (_currentValue >= 2500)
                        ? container("5", "VideoGame", "2500", "Electronic Game")
                        : Container(),
                    const SizedBox(height: 6),
                    (_currentValue >= 65850)
                        ? container("6", "Necklace", "65850", "Jewellery")
                        : Container(),
                    const SizedBox(height: 6),
                    (_currentValue >= 50000)
                        ? container(
                            "7", "Violin", "50000", "Musical Instrument")
                        : Container(),
                    const SizedBox(height: 6),
                    (_currentValue >= 8000)
                        ? container("8", "Bluetooth Speaker", "8000", "Gadgets")
                        : Container(),
                    const SizedBox(height: 6),
                    (_currentValue >= 15000)
                        ? container("9", "Earnings", "15000", "Jewellery")
                        : Container(),
                    const SizedBox(height: 6),
                    (_currentValue >= 78950)
                        ? container("10", "Home Theater", "78950", "Electronic")
                        : Container(),
                    const SizedBox(height: 6),
                  ],
                ),
              ))
        ],
      ),
    );
  }

  container(var id, var name, var price, var category) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.106,
      width: MediaQuery.of(context).size.width * 0.98,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: <BoxShadow>[
          BoxShadow(
            blurRadius: 5,
            spreadRadius: 2,
            offset: const Offset(0, -2),
            color: Colors.black38.withOpacity(0.04),
          ),
        ],
      ),
      child: Row(
        children: [
          // SizedBox(width: 20),
          Container(
            margin: const EdgeInsets.only(left: 10),
            //width: 55,
            width: MediaQuery.of(context).size.width * 0.08,
            // color: Colors.amber,
            child: Text(
              id,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.8),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10),
            width: MediaQuery.of(context).size.width * 0.6,
            // color: Colors.purpleAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.black.withOpacity(0.8),
                  ),
                ),
                Text(
                  category,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.3),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 11),
            //width: MediaQuery.of(context).size.width * 0.248,
            width: MediaQuery.of(context).size.width * 0.218,
            // color: Colors.red,
            child: Text(
              "Rs.$price",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.3),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
