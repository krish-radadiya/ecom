import 'package:flutter/material.dart';
import 'package:practical/utils/global.dart';

class detailpage extends StatefulWidget {
  const detailpage({super.key});

  @override
  State<detailpage> createState() => _detailpageState();
}

class _detailpageState extends State<detailpage> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> data = ModalRoute.of(context)!.settings.arguments
        as List<Map<String, dynamic>>;
    return Scaffold(
      appBar: AppBar(
        title: Text("details page"),
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: Global.allproducts.map((e) {}).toList(),
          Expanded(
            flex: 6,
            child: Container(
              color: Colors.white,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0.5,
                ),
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "name",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "${e['name']}",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "price",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "${e['price']}",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "decription",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "${e['description']}",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ],
              ),

              // child: Text(
              //   "name",
              //   style: TextStyle(fontSize: 20),
              // ),
              //     Text(
              //       "name",
              //       style: TextStyle(fontSize: 20),
              //     ),
              //     Text(
              //       "materials",
              //       style: TextStyle(fontSize: 20),
              //     ),
              //     Text(
              //       "discription",
              //       style: TextStyle(fontSize: 20),
              //
              // ),
            ),
          ),
        ),
      ),
    );
  }
}
