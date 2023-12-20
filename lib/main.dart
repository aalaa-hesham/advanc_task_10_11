import 'package:advanc_task_10/pages/auth/foget_password.dart';
import 'package:advanc_task_10/pages/home.dart';
import 'package:advanc_task_10/pages/auth/login.dart';
import 'package:advanc_task_10/pages/auth/signup.dart';
import 'package:advanc_task_10/pages/splash.dart';
import 'package:advanc_task_10/providers/ad_category.provider.dart';
import 'package:advanc_task_10/providers/app_auth.provider.dart';
import 'package:advanc_task_10/utils/color_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => AppAuthProvider()),
    ChangeNotifierProvider(create: (_) => AdsProvider()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: child,
        );
      },
      child: const Splash(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 1);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        backgroundColor: ColorsUtil.badgeColor,
        body: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 50)),
            Theme(
              data: Theme.of(context).copyWith(
                  colorScheme: Theme.of(context)
                      .colorScheme
                      .copyWith(surfaceVariant: Colors.transparent)),
              child: TabBar(
                controller: _tabController,
                isScrollable: false,
                labelColor: Color.fromARGB(255, 0, 0, 0),
                unselectedLabelColor: Colors.grey,
                labelStyle:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 33),
                unselectedLabelStyle:
                    TextStyle(fontWeight: FontWeight.w300, fontSize: 22),
                indicatorColor: Colors.transparent,
                tabs: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Tab(
                      text: "Sign Up",
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Tab(
                      text: "Log in",
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Tab(
                      text: "Forget Password",
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Signup(),
                  Login(),
                  ForgetPassword(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
