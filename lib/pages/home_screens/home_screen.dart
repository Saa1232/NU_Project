import 'package:flutter/material.dart';
import 'package:flutter_project_nu/constants/app_icon.dart';
import 'package:flutter_project_nu/routes/app_routes.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

var screens = [
  AppRoutes.accountScreen,
  AppRoutes.cardScreen,
  AppRoutes.paymentScreen,
  AppRoutes.abaScanscreen,
  AppRoutes.favoritesScreen,
  AppRoutes.transferScreen,
];

var miniappitemname = [
  "Memoria Spa",
  "Big Bus Angkor Phnom Penh",
  "Metfone Service",
  "Cinema Ticket",
  "Smart Axiata",
  "VET Express",
  "Starbuck Coffee",
  "Cambolink21",
  "BookMeBus",
  "Menulife Cambodia"
      "See All",
];

var homemenuIcons = [
  appIconsHome.accountIcon,
  appIconsHome.cardIcon,
  appIconsHome.paymentIcon,
  appIconsHome.scanIcon,
  appIconsHome.starIcon,
  appIconsHome.transferIcon,
];
var homemenutitle = [
  "Accounts",
  "Cards",
  "Payments",
  "ABA Scan",
  "Favorites",
  "Transfers",
];
var othermenuIcons = [
  appIconsHome.miniappIcon,
  appIconsHome.storeIcon,
  appIconsHome.giftIcon,
  appIconsHome.autopayIcon,

  appIconsHome.naviIcon,
  appIconsHome.chartIcon,
  appIconsHome.governmentIcon,
  appIconsHome.eCashIcon,

  appIconsHome.newaccountIcon,
  appIconsHome.invitefriendIcon,
  appIconsHome.loanIcon,
  appIconsHome.cashbackIcon,

  appIconsHome.exchangeIcon,
  appIconsHome.locatorIcon,
  appIconsHome.checkbookIcon,
];
var othermenutitle = [
  "Mini Apps",
  "ABA Merchants",
  "Gift Zone",
  "Auto-Payments",
  "Navi",
  "Analytics",
  "Government Service",
  "E-Cash",
  "New Account",
  "Invite Friend",
  "Loans",
  "ABA Cashback",
  "Exchange Rate",
  "Locator",
  "Checkbook",
];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff022133),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: .start,
            children: [
              _buildheaderhome(),
              _newsNpromotion(),
              _buildminiApp(),
              _buildGovService(),
              _buildDiscovery(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDiscovery() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text(
            "Discoveries",
            style: TextStyle(
              fontWeight: .bold,
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 15),
          Container(
            width: .infinity,
            height: 160,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGovService() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text(
            "Government Services",
            style: TextStyle(
              fontWeight: .bold,
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 15),
          Container(
            width: .infinity,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildminiApp() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text(
            "Mini Apps",
            style: TextStyle(
              fontWeight: .bold,
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 15),
          Container(
            width: .infinity,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ],
      ),
    );
  }

  Widget _newsNpromotion() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text(
            "New & Promotions",
            style: TextStyle(
              fontWeight: .bold,
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 15),
          Container(
            width: .infinity,
            height: 140,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildheaderhome() {
    return GestureDetector(
      onTap: () {
        setState(() {
          Navigator.pushNamed(context, AppRoutes.accountScreen);
        });
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff022133), Color(0xff024164)],
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: .min,
            children: [
              Row(
                children: [
                  Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(5),

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Image.asset(
                        appIconsHome.chatIcon,
                        color: Colors.white,
                        scale: 2,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      child: Image.asset(
                        appIconsHome.bellIcon,
                        scale: 3.2,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(2),

                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Image.asset(
                        appIconsHome.qrIcon,
                        scale: 1.8,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: .start,
                    children: [
                      Text(
                        "Good evening!",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        "Name",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: .bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: .infinity,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 20,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "\$100,000,000.00",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: .bold,
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color.fromARGB(255, 1, 55, 85),
                            ),
                            child: Icon(
                              Icons.visibility_off_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 2),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 6),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.lightBlueAccent,
                            ),
                            child: Text(
                              "Default",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            "Savings",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white54,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 7),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              appIconsHome.receiveIcon,
                              scale: 1.25,
                              color: Colors.green,
                            ),
                          ),
                          SizedBox(width: 7),
                          Text(
                            "Receive",
                            style: GoogleFonts.spaceGrotesk(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          SizedBox(width: 30),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              appIconsHome.sendIcon,
                              scale: 2.6,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 7),
                          Text(
                            "Send",
                            style: GoogleFonts.spaceGrotesk(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          SizedBox(width: 20),
                          Text(
                            " | ",
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(width: 20),
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.lightBlue,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Image.asset(
                              appIconsHome.chartIcon,
                              scale: 3,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Analytics",
                            style: GoogleFonts.spaceGrotesk(
                              fontSize: 13,
                              color: Colors.white,
                              fontWeight: .bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              pinItemMenu(),
              Divider(color: Colors.white38, thickness: 1),
              SizedBox(height: 10),
              otheritemmenu(),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox otheritemmenu() {
    return SizedBox(
      height: 38,
      width: .infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,

        shrinkWrap: true,
        itemCount: othermenuIcons.length,

        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      othermenuIcons[index],
                      color: Color.fromARGB(255, 1, 93, 143),
                      scale: 2,
                    ),
                    SizedBox(width: 8),
                    Text(
                      othermenutitle[index],
                      style: GoogleFonts.spaceGrotesk(
                        color: Colors.white,
                        fontWeight: .bold,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  SizedBox pinItemMenu() {
    return SizedBox(
      height: 250,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),

        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                Navigator.pushNamed(context, screens[index]);
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: .center,
                children: [
                  Image.asset(
                    homemenuIcons[index],
                    scale: 2,
                    color: Color.fromARGB(255, 1, 93, 143),
                  ),
                  SizedBox(height: 10),
                  Text(
                    homemenutitle[index],
                    style: GoogleFonts.spaceGrotesk(
                      fontWeight: .bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: homemenuIcons.length,
      ),
    );
  }
}
