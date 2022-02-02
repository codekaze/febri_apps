import 'package:flutter/material.dart';
import 'package:flutterx/core.dart';

class PaDashboardDrawer extends StatefulWidget {
  @override
  _PaDashboardDrawerState createState() => _PaDashboardDrawerState();
}

class _PaDashboardDrawerState extends State<PaDashboardDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      color: loginBackgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    NetworkImage('https://i.ibb.co/hshHCTD/pet-cat1.png'),
              ),
              title: Text(
                'Miroslava Savitskaya',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
              subtitle: Text(
                'Active status',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: .7,
                ),
              ),
            ),
          ),
          Column(
            children: navList
                .map((e) => ListTile(
                      leading: Icon(
                        e['icon'],
                        color: Colors.white,
                      ),
                      title: Text(
                        e['title'],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 14.0,
                        ),
                      ),
                    ))
                .toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Settings',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                  ),
                  minLeadingWidth: 10,
                ),
              ),
              Container(
                width: 1.5,
                height: 15,
                color: Colors.white,
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                flex: 3,
                child: Text(
                  'Log out',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 14.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
