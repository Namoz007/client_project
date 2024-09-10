import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project/app_utils/app_routes.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const SizedBox(height: 50,),
          
          const Center(child: Text("Material Tailwind React",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),),

          const SizedBox(height: 20,),
          
          ListTile(
            title: const Text("Home"),
            onTap: (){
              context.goNamed("/homeScreen");
            },
            leading: const Icon(Icons.home),
          ),

          ListTile(
            title: const Text("Documents"),
            onTap: (){
              context.goNamed(AppRoutes.documents);
            },
            leading: const Icon(CupertinoIcons.doc_fill),
          ),

          ListTile(
            title: const Text("Directory"),
            onTap: (){
              context.goNamed(AppRoutes.directory);
            },
            leading: const Icon(CupertinoIcons.book),
          ),

          ListTile(
            title: const Text("Order"),
            onTap: (){
              context.goNamed(AppRoutes.order);
            },
            leading: const Icon(CupertinoIcons.doc_on_doc_fill),
          ),

          ListTile(
            title: const Text("Application"),
            onTap: (){
              context.goNamed(AppRoutes.application);
            },
            leading: const Icon(Icons.signal_cellular_connected_no_internet_0_bar_outlined),
          ),

          ListTile(
            title: const Text("Aggregation"),
            onTap: (){
              context.goNamed(AppRoutes.aggregation);
            },
            leading: const Icon(Icons.cloud_download_sharp),
          ),

          ListTile(
            title: const Text("Shipment"),
            onTap: (){
              context.goNamed(AppRoutes.shipment);
            },
            leading: const Icon(Icons.local_shipping_outlined),
          ),

          ListTile(
            title: const Text("Write-of"),
            onTap: (){
              context.goNamed(AppRoutes.writeOf);
            },
            leading: const Icon(CupertinoIcons.stop_circle_fill),
          ),

          ListTile(
            title: const Text("Fitting"),
            onTap: (){
              context.goNamed(AppRoutes.fitting);
            },
            leading: const Icon(Icons.cloud),
          ),

          ListTile(
            title: const Text("Settings"),
            onTap: (){
              context.goNamed(AppRoutes.settings);
            },
            leading: const Icon(Icons.settings),
          ),

          ListTile(
            title: const Text("Log Out"),
            onTap: (){
              //
            },
            leading: const Icon(Icons.home),
          ),
        ],
      ),
    );
  }
}
