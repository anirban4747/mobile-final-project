import 'package:flutter/material.dart';
import 'detail_screen.dart';
import '../services/api_service.dart';
import 'settings_screen.dart';
import '../services/notification_service.dart';
class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List data = [];

  @override
  void initState(){
    super.initState();
    fetch();
  }

  void fetch() async{
    data = await ApiService.getData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
      title: Text("Home"),
      actions: [
        IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SettingsScreen()),
              );
            },
          ),
        ],
      ),

      body: ListView.builder(
        
        itemCount: data.length,
        itemBuilder: (context,index){

          return ListTile(
            title: Text(data[index]['title']),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>DetailScreen(data[index])));
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.notifications),
        onPressed: () {
          NotificationService.showNotification();
          print("Notification triggered");
        },
      ),
    );
  }
}