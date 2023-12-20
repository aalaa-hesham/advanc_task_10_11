import 'package:advanc_task_10/main.dart';
import 'package:advanc_task_10/providers/ad_category.provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.keyboard_arrow_right),
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (_) => const MyHomePage()));
              },
              child: Center(child: Text("your shop")),
            ),
          )
        ],
      ),
      body: Center(
        child: Consumer<AdsProvider>(
          builder: (context, adsProvider, child) {
            if (adsProvider.ads.isEmpty) {
              return CircularProgressIndicator();
            } else {
              return ListView.builder(
                itemCount: adsProvider.ads.length,
                itemBuilder: (context, index) {
                  final ad = adsProvider.ads[index];
                  final category = adsProvider.categories[index];
                  return ListTile(
                    title: Text(ad),
                    subtitle: Text(category),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
