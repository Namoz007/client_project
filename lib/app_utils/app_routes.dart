import 'package:go_router/go_router.dart';
import 'package:project/ui/aggregation/aggregation_screen.dart';
import 'package:project/ui/application/application_screen.dart';
import 'package:project/ui/directory/directiory_screen.dart';
import 'package:project/ui/documents/documents_screen.dart';
import 'package:project/ui/fitting/fitting_screen.dart';
import 'package:project/ui/home_screen/home_screen.dart';
import 'package:project/ui/order/order_screen.dart';
import 'package:project/ui/settings/settings_screen.dart';
import 'package:project/ui/shipment/shipment_screen.dart';
import 'package:project/ui/write_of/write_screen.dart';

class AppRoutes {

  static const home = "/homeScreen";
  static const documents = "/documents";
  static const directory = "/directory";
  static const order = "/order";
  static const application = "/application";
  static const aggregation = "/aggregation";
  static const shipment = "/shipment";
  static const writeOf = "/writeOf";
  static const fitting = "/fitting";
  static const settings = '/settings';

  static final config = GoRouter(
    initialLocation: home,
    routes: [
      GoRoute(
        path: home,
        name: home,
        builder: (context,state) => const HomeScreen(),
      ),

      GoRoute(path: documents,name: documents,builder: (context,state) => const DocumentsScreen(),),

      GoRoute(path: directory,name: directory,builder: (context,state) => const DirectioryScreen(),),

      GoRoute(path: order,name: order,builder: (context,state) => const OrderScreen(),),

      GoRoute(path: application,name: application,builder: (context,state) => const ApplicationScreen(),),

      GoRoute(path: aggregation,name: aggregation,builder: (context,state) => const AggregationScreen(),),

      GoRoute(path: shipment,name: shipment,builder: (context,state) => const ShipmentScreen(),),

      GoRoute(path: writeOf,name: writeOf,builder: (context,state) => const WriteScreen(),),

      GoRoute(path: fitting,name: fitting,builder: (context,state) => const FittingScreen(),),

      GoRoute(path: settings,name: settings,builder: (context,state) => const SettingsScreen(),),
    ],
  );
}
