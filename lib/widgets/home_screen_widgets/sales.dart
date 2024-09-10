import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Sales extends StatefulWidget {
  const Sales({super.key});

  @override
  State<Sales> createState() => _SalesState();
}

class _SalesState extends State<Sales> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: 20, left: 20, right: 20, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: const Icon(
                    Icons.signal_cellular_alt,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Sales",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "\$103,430",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25),
                    )
                  ],
                ),
              ],
            ),
          ),
          const Divider(),
          const SizedBox(height: 10,),
          Center(
            child: RichText(
              text: const TextSpan(
                  text: "+5%",
                  style: TextStyle(color: Colors.green,fontSize: 16,fontWeight: FontWeight.bold,),
                  children: [
                    TextSpan(
                        text: "than yesterday",
                        style: TextStyle(color: Colors.grey,)
                    )
                  ]
              ),

            ),
          ),
        ],
      ),
    );
  }
}
