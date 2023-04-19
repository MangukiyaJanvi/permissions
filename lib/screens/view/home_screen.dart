import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    PermissionHandler();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          elevation: 0.1,
          leading: IconButton(
            onPressed: () async {
              openAppSettings();
            },
            icon: Icon(Icons.settings_outlined),
          ),
          title: Text("Permission Handler"),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.cyan, Colors.teal],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> PermissionHandler() async {
    Map<Permission, PermissionStatus> statuses =
        await [Permission.location, Permission.storage].request();
  }
}
