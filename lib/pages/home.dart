import 'package:advanc_task_10/main.dart';
import 'package:advanc_task_10/providers/category.provider.dart';
import 'package:advanc_task_10/providers/home.provider.dart';
import 'package:advanc_task_10/providers/app_auth.provider.dart';
import 'package:advanc_task_10/providers/product.provider.dart';
import 'package:advanc_task_10/widgets/home/category_row.home.widget.dart';
import 'package:flexible_grid_view/flexible_grid_view.dart';
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
            child:Center(child: Text("your shop")),
           
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
          Consumer<CategoryProvider>(
              builder: (__, caegoryProvider, _) {
                return FutureBuilder(
                    future: caegoryProvider.getCategories(context, limit: 3),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const CircularProgressIndicator();
                      } else if (snapshot.connectionState ==
                          ConnectionState.done) {
                        if (snapshot.hasError) {
                          return Text('Error While Get Data');
                        } else if (snapshot.hasData) {
                          return CategoriesRowHome(
                            categories: snapshot.data ?? [],
                          );
                        } else {
                          return Text('No Data Found');
                        }
                      } else {
                        return Text(
                            'Connection Statue ${snapshot.connectionState}');
                      }
                    });
              },
            ),

            // Consumer<HomeProvider>(
            //   builder: (context, adsProvider, child) {
            // if (HomeProvider.name) {
            //   return CircularProgressIndicator();
            // } else {
            //   return ListView.builder(
            //     itemCount: adsProvider.ads.length,
            //     itemBuilder: (context, index) {
            //       final ad = adsProvider.ads[index];
            //       final category = adsProvider.categories[index];
            //       return ListTile(
            //         title: Text(ad),
            //         subtitle: Text(category),

            //       );
            //     },
            //   );
            //     }
            //   },
            // ),
            ElevatedButton(
                onPressed: () =>
                    Provider.of<AppAuthProvider>(context, listen: false)
                        .onLogout(context),
                child: Text('LogOut')),
          ],
        ),
      ),
    );
  }
}
