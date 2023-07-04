import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'package:wallet/screens/CoinModel.dart';

class Information extends StatefulWidget {
  final CoinModel item;

  Information({required this.item});

  @override
  _InformationState createState() => _InformationState();
}

class _InformationState extends State<Information> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.item.name ?? ''),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [

            Container(
              height: 200,

              width: 200,
              child: Image.network(widget.item.image),
            ),
            Text(
              'Coin Name: ${widget.item.name}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              'Coin Symbol: ${widget.item.symbol}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              'Current Price: ${widget.item.currentPrice}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Sparkline(
              data: widget.item.sparklineIn7D.price,
              lineColor: Colors.blue,
              fillColor: Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
