import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class NewClients extends StatefulWidget {
  const NewClients({super.key});

  @override
  State<NewClients> createState() => _NewClientsState();
}

class _NewClientsState extends State<NewClients> {
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
                    Icons.person_add_alt_1,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "New Clients",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "3,462",
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
                  text: "-2%",
                  style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold,),
                  children: [
                    TextSpan(
                        text: "than last yesterday",
                        style: TextStyle(color: Colors.grey,),
                    ),
                  ]
              ),

            ),
          ),
        ],
      ),
    );
  }
}
