import 'package:flutter/material.dart';
import 'package:flutter_project_nu/constants/app_icon.dart';
import 'package:flutter_project_nu/routes/app_routes.dart';

class TransferScreen extends StatefulWidget {
  const TransferScreen({super.key});

  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
  var localTransferIcon = [
    appIconsHome.transferIcon1,
    appIconsHome.transferIcon2,
    appIconsHome.transferIcon3,
    appIconsHome.transferIcon4,
  ];
  var localtransfertitle = [
    'Own Account',
    'ABA Account',
    'Local Banks & Wallets',
    'Cash-by-Code',
  ];

  var localtransferdis = [
    'Make transfer to your own \naccounts',
    'Transfer monet to other \nABA customers',
    'Make transfer to banks or \nwallets in Cambodia',
    'Send cash with code to withdraw \nfrom ABA ATM',
  ];

  var internationalTransferIcon = [
    appIconsHome.transferIcon5,
    appIconsHome.transferIcon6,
    appIconsHome.transferIcon7,
    appIconsHome.transferIcon8,
    appIconsHome.transferIcon9,
    appIconsHome.transferIcon10,
  ];

  var internationaltransfertitle = [
    'SWIFT - Wire transfer',
    'Ria Money Send/Receive',
    'MoneyGram Send/Receive',
    'DBP Remit - Transfer to Philippines',
    'Transfer to South Korea',
    'Western Union Send/Receive',
  ];

  var ttcIcon = [
    appIconsHome.transferIcon11,
    appIconsHome.transferIcon12,
    appIconsHome.transferIcon13,
  ];

  var ttctitle = [
    "Visa Direct     ",
    "Mastercard Send     ",
    "Unionpay Money Express",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 7, 37, 75),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, bottom: 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildappbar(),
              Stack(
                children: [
                  Positioned(
                    child: Container(
                      width: .infinity,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 1, 20, 44),
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(20),
                          right: Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: .start,
                        mainAxisSize: .min,
                        children: [
                          _buildFavorite(),
                          _buildLT(),
                          _buildIT(),
                          _buildTTC(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildappbar() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.pop(context, AppRoutes.homeScreen);
                  });
                },
                child: Icon(Icons.arrow_back_ios, color: Colors.white),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 3, 42, 90),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.calendar_month,
                  color: Colors.white,
                  size: 25,
                ),
              ),
              SizedBox(width: 20),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 3, 42, 90),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.search, color: Colors.white, size: 25),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Text(
                "ABA",
                style: TextStyle(
                  fontWeight: .bold,
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              Text(
                "' ",
                style: TextStyle(
                  fontWeight: .w900,
                  color: Colors.red,
                  fontSize: 35,
                  height: 1,
                ),
              ),
              Text(
                "Payment",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ],
          ),
          SizedBox(height: 20),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.65,
            child: FittedBox(
              child: Text(
                "Send money to friends and family \nin just a few taps.",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFavorite() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text(
            "Favorites",
            style: TextStyle(
              fontWeight: .w900,
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 15),
          Container(
            height: 55,
            width: .infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white12,
            ),
            child: Row(
              mainAxisAlignment: .center,
              children: [
                Text(
                  "Create Favorites",
                  style: TextStyle(fontWeight: .bold, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLT() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text(
            "Local Transfer",
            style: TextStyle(
              fontWeight: .bold,
              color: Colors.white,
              fontSize: 18,
              height: -0,
            ),
          ),
          GridView.builder(
            itemCount: localTransferIcon.length,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 150,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff212d39),
                ),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: .start,
                  mainAxisSize: .min,
                  children: [
                    Image.asset(localTransferIcon[index], scale: 2.5),
                    SizedBox(height: 5),
                    FittedBox(
                      child: Text(
                        localtransfertitle[index],
                        style: TextStyle(
                          fontWeight: .bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: FittedBox(
                        child: Text(
                          localtransferdis[index],
                          style: TextStyle(
                            fontWeight: .bold,
                            color: Colors.white24,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildIT() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text(
            "International Transfers",
            style: TextStyle(
              color: Colors.white,
              fontWeight: .bold,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 170,

            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: internationalTransferIcon.length,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisExtent: 270,
                crossAxisSpacing: 10,

                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xff212d39),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Image.asset(internationalTransferIcon[index], scale: 2.5),
                      SizedBox(width: 10),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: FittedBox(
                          child: Text(
                            internationaltransfertitle[index],
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: .bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildTTC() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text(
            "Transfers to Cards",
            style: TextStyle(
              color: Colors.white,
              fontWeight: .bold,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 120,

            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: ttcIcon.length,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 270,
                crossAxisSpacing: 10,

                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xff212d39),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Image.asset(ttcIcon[index], scale: 2.5),
                      SizedBox(width: 10),
                      FittedBox(
                        child: Text(
                          ttctitle[index],
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: .bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
