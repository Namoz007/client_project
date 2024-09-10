import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Moneys extends StatefulWidget {
  const Moneys({super.key});

  @override
  State<Moneys> createState() => _MoneysState();
}

class _MoneysState extends State<Moneys> {
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
                    CupertinoIcons.money_dollar_circle_fill,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Today's Money",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "\$52K",
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
                  text: "+55%",
                  style: TextStyle(color: Colors.green,fontSize: 16,fontWeight: FontWeight.bold,),
                  children: [
                    TextSpan(
                        text: "than last week",
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
