import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/auth_provider.dart';
import 'providers/business_provider.dart';
import 'providers/search_provider.dart';
import 'screens/auth/login_screen.dart';
import 'screens/auth/sign_up_screen.dart';
import 'screens/auth/update_profile_screen.dart';
import 'screens/auth/logout_screen.dart';
import 'screens/home_screen.dart';
import 'screens/category_screen.dart';
import 'screens/business_details_screen.dart';
import 'screens/search_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/splash_screen.dart';
import 'screens/add_business_screen.dart'; // Added AddBusinessScreen
import 'models/business.dart'; // Adjust the path as necessary


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => BusinessProvider()),
        ChangeNotifierProvider(create: (_) => SearchProvider()),
      ],
      child: MaterialApp(
        title: 'Business Finder App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/splash',
        routes: {
          '/splash': (context) => SplashScreen(),
          '/home': (context) => HomeScreen(),
          '/login': (context) => LoginScreen(),
          '/sign-up': (context) => SignUpScreen(),
          '/update-profile': (context) => UpdateProfileScreen(),
          '/logout': (context) => LogoutScreen(),
          '/category': (context) => CategoryScreen(),
          '/business-details': (context) => BusinessDetailsScreen(
              business: ModalRoute.of(context)!.settings.arguments as Business),
          '/search': (context) => SearchScreen(),
          '/profile': (context) => ProfileScreen(),
          '/add-business': (context) => AddBusinessScreen(), // Added route for AddBusinessScreen
        },
      ),
    );
  }
}
