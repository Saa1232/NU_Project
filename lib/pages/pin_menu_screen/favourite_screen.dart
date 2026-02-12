import 'package:flutter/material.dart';
import 'package:flutter_project_nu/constants/app_icon.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0c2132),
      appBar: appbarfav(),
      body: Column(
        crossAxisAlignment: .start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.75,
            child: FittedBox(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  "Transfer to friend quickly or pay \nbill easily from your saved \nFavorties.",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Container(
              width: .infinity,

              decoration: BoxDecoration(
                color: Color(0xff101c28),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: .center,
                children: [
                  Image.asset(appIconsHome.favScreenIcon, scale: 2),
                  SizedBox(height: 10),
                  Text(
                    "No Favorites",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: .bold,
                      color: const Color.fromARGB(255, 204, 192, 192),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar appbarfav() {
    return AppBar(
      foregroundColor: Colors.white,
      backgroundColor: Color(0xff0c2132),
      title: Row(
        children: [
          Text(
            "ABA",
            style: TextStyle(
              fontWeight: .w900,
              fontSize: 28,
              color: Colors.white,
              letterSpacing: 3,
            ),
          ),
          Text(
            "'",
            style: TextStyle(
              fontWeight: .w900,
              fontSize: 38,
              color: Colors.red,
              letterSpacing: 5,
            ),
          ),
          SizedBox(width: 5),
          Text(
            "Favorites",
            style: TextStyle(
              fontWeight: .bold,
              fontSize: 26,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
