import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Tabx extends StatefulWidget {
  const Tabx({Key? key}) : super(key: key);

  @override
  State<Tabx> createState() => _TabxState();
}

class _TabxState extends State<Tabx> {
  List<dynamic> _services = [
    ['Transfer', Iconsax.export_1, Colors.blue],
    ['Top-up', Iconsax.import, Colors.pink],
    ['Bill', Iconsax.wallet_3, Colors.orange],
    ['More', Iconsax.more, Colors.green],
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 0, right: 0, top: 0),
            child: Container(
              height: 300.0,
              width: 500,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                ),
              ),
              child: Center(child: Text("2000,000 rupees")),
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              for (int i = 0; i < _services.length; i++)
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = i;
                    });
                  },
                  child: Column(
                    children: [
                      Icon(
                        _services[i][1],
                        color: _selectedIndex == i ? _services[i][2] : Colors.black,
                      ),
                      SizedBox(height: 8),
                      Text(
                        _services[i][0],
                        style: TextStyle(
                          color: _selectedIndex == i ? _services[i][2]: Colors.black,
                        ),
                      ),


                    ],

                  ),
                ),
            ],
          ),
          Row(children: [
            Text('today'),
            Spacer(),
            Text('200')
          ],)
        ],
      ),
    );
  }
}
