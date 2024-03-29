import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_sidebar/mobile_sidebar.dart';
import 'Screens/home_screen.dart';
import 'Screens/project_home_screen.dart';
import 'Screens/projects_screen.dart';
import 'Screens/charts_screen.dart';

//export ENABLE_FLUTTER_DESKTOP=true




void main() {
  // See https://github.com/flutter/flutter/wiki/Desktop-shells#target-platform-override
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;

  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        unselectedWidgetColor: Colors.grey,
        primaryColor: Color(0xff3A3F54),
        // See https://github.com/flutter/flutter/wiki/Desktop-shells#fonts
        fontFamily: 'Roboto',
      ),
      home: Screens_Outline(),
    );
  }
}

class Screens_Outline extends StatefulWidget {
  @override
  _Screens_OutlineState createState() => _Screens_OutlineState();
}

class _Screens_OutlineState extends State<Screens_Outline> {
  final controller = PageController(initialPage: 0);
  bool _showList = false;
  final _breakpoint = 800.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spend Analytics Software Centre'),
        actions: <Widget>[
          if (MediaQuery.of(context).size.width < _breakpoint) ...[
            IconButton(
              icon: Icon(_showList ? Icons.grid_on : Icons.grid_off),
              onPressed: () {
                if (mounted)
                  setState(() {
                    _showList = !_showList;
                  });
              },
            )
          ]
        ],
      ),
      body: MobileSidebar(
        items: <MenuItem>[
          MenuItem(
            icon: Icons.edit,
            color: Colors.deepPurpleAccent,
            title: 'Home',
            subtitle: 'Edit, Share, Delete',
            child: HomeScreen(),
          ),
          MenuItem(
            icon: Icons.event,
            color: Colors.deepPurpleAccent,
            title: 'Projects',
            subtitle: 'In Progress & Complete',
            child: Projects(),
          ),
          MenuItem(
            icon: Icons.pie_chart,
            color: Colors.blueGrey,
            title: 'Dashboards',
            subtitle: 'History of Results',
            child: ChartsScreen(),
          ),
          MenuItem(
            icon: Icons.settings,
            color: Colors.amber,
            title: 'Settings',
            subtitle: 'Hello',
            child: Container(color: Colors.yellowAccent),
          ),
        ],
        showList: _showList,
      ),
    );
  }
}
