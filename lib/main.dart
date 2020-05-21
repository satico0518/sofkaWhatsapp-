import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      home: DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black54,
            title: Text('Sofka WhatsApp'),
            actions: [
              IconButton(icon: Icon(Icons.search), onPressed: () {}),
              IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
            ],
            bottom: TabBar(
              tabs: <Widget>[
                Container(
                  width: 30,
                  height: 50,
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.camera_alt,
                    size: 18,
                  ),
                ),
                Container(
                    width: 100,
                    height: 50,
                    alignment: Alignment.center,
                    child: Text(
                      "CHATS",
                      style: TextStyle(fontSize: 11),
                    )),
                Container(
                    width: 100,
                    height: 50,
                    alignment: Alignment.center,
                    child: Text(
                      "ESTADOS",
                      style: TextStyle(fontSize: 11),
                    )),
                Container(
                    width: 100,
                    height: 50,
                    alignment: Alignment.center,
                    child: Text(
                      "LLAMADAS",
                      style: TextStyle(fontSize: 11),
                    ))
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Text(''),
              _getChats(),
              _getStates(),
              _getCalls(),
            ],
          ),
        ),
      ),
    );
  }

  _getChats() {
    return ListView(
      children: [
        ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage('assets/avatar.png'),),
          title: Text('Camilo Cubillos'),
          subtitle: Row(
            children: [
              Icon(Icons.check, size: 15,),
              Text('Hola Cami'),
            ],
          ),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('5:45 p.m.'),
              CircleAvatar(child: Text('4', style: TextStyle(fontSize: 12),), radius: 10,)
            ],
          ),
        ),
        Divider(),
        ListTile(
          leading: CircleAvatar(backgroundImage: NetworkImage('https://i0.pngocean.com/files/340/849/170/child-avatar-girl-woman-computer-icons-child.jpg'),),
          title: Text('Natalia Jimenez'),
          subtitle: Row(
            children: [
              Icon(Icons.check, size: 15,),
              Text('Ya empezo el curso'),
            ],
          ),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('5:10 p.m.'),
              CircleAvatar(child: Text('2', style: TextStyle(fontSize: 12),), radius: 10,)
            ],
          ),
        ),
        Divider(),
      ],
    );
  }

  _getStates() {
    return ListView(
      children: [
        ListTile(
          leading: Stack(
            children: [
              CircleAvatar(backgroundImage: NetworkImage('https://cdn0.iconfinder.com/data/icons/avatar-78/128/12-512.png'),),
              Positioned(
                bottom: -3,
                right: -3,
                child: Icon(Icons.add_circle, color: Colors.green,))
            ],),
          title: Text('Mi estado'),
          subtitle: Text('Añade una actualización'),          
        ),
        Padding(
          padding: const EdgeInsets.all(8.0).copyWith(left: 15),
          child: Text('Recientes'),
        ),
        Divider(),
        ListTile(
          leading: CircleAvatar(backgroundImage: NetworkImage('https://i0.pngocean.com/files/340/849/170/child-avatar-girl-woman-computer-icons-child.jpg'),),
          title: Text('Natalia Jimenez'),
          subtitle: Row(
            children: [
              Text('Hace 3 minutos'),
            ],
          ),
        ),
        Divider(),
        ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage('assets/avatar.png'),),
          title: Text('Camilo cubillos'),
          subtitle: Row(
            children: [
              Text('Hace 35 minutos'),
            ],
          ),
        ),
        Divider(),
      ],
    );
  }

  _getCalls() {
    return ListView(
      children: [
        ListTile(
          leading: CircleAvatar(backgroundImage: NetworkImage('https://i0.pngocean.com/files/340/849/170/child-avatar-girl-woman-computer-icons-child.jpg'),),
          title: Text('Natalia Jimenez'),
          subtitle: Row(
            children: [
              Icon(Icons.call_missed, color: Colors.red, size: 15,),
              Text('17 de Mayo 4:13 p.m.'),
            ],          
          ),
          trailing: Icon(Icons.phone),
        ),
        Divider(),
        ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage('assets/avatar.png'),),
          title: Text('Camilo cubillos'),
          subtitle: Row(
            children: [
              Icon(Icons.call_made, color: Colors.green, size: 15,),
              Text('12 de Mayo 2:53 p.m.'),
            ],
          ),
          trailing: Icon(Icons.videocam),
        ),
        Divider(),
      ],
    );
  }
}
