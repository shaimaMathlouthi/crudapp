import 'package:flutter/material.dart';
import 'package:my_crud_app/controller/player_controller.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'view/ui/splach_screen/splach_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<PlayerController>(
            create: (_) {
              return PlayerController();
            },
          ),
        ],
        child: ResponsiveSizer(
          builder: (p0, p1, p2) => const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: SplachScreen(),
          ),
        ));
  }
}
