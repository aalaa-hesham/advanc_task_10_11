import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class AdsProvider extends ChangeNotifier {
  List<String> _categories = [];
  List<String> get categories => _categories;

  List<String> _ads = [];
  List<String> get ads => _ads;

  Future<void> fetchAdsAndCategories() async {
    final snapshot = await FirebaseFirestore.instance.collection('ads').get();
    final ads = snapshot.docs.map((doc) => doc.data()['ad'] as String).toList();
    final categories = snapshot.docs
        .map((doc) => doc.data()['category'] as String)
        .toSet()
        .toList();
    _ads = ads;
    _categories = categories;
    notifyListeners();
  }
}

class AdsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ad'),
      ),
      body: FutureBuilder(
        future: Provider.of<AdsProvider>(context, listen: false)
            .fetchAdsAndCategories(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            if (snapshot.hasError) {
              return Center(
                child: Text('An error occurred!'),
              );
            } else {
              return Consumer<AdsProvider>(
                builder: (context, adsProvider, child) {
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
                },
              );
            }
          }
        },
      ),
    );
  }
}
