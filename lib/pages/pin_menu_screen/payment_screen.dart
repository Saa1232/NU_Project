import 'package:flutter/material.dart';
import 'package:flutter_project_nu/constants/app_icon.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
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
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: .start,
                          mainAxisSize: .min,
                          children: [_buildFavorite(), _buildCategories()],
                        ),
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
              Icon(Icons.arrow_back_ios, color: Colors.white),
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
                "Top up and pay bills anytime, with \nno fees.",
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

  Widget _buildCategories() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Categories",
                style: TextStyle(
                  fontWeight: .bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              Spacer(),
              Icon(Icons.location_on, color: Colors.lightBlue, size: 20),
              SizedBox(width: 5),
              Text(
                "Phnom Penh",
                style: TextStyle(
                  color: Colors.lightBlue,
                  fontWeight: .bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(width: 5),
              Icon(
                Icons.keyboard_arrow_down_outlined,
                color: Colors.lightBlue,
                fontWeight: .bold,
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: _maincategorypayment(
                  cateicon: appIconsHome.paymentScreenMainIcon1,
                  title: "Mobile Top-up",
                  discription: "Supported Operators:\n",
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: _maincategorypayment(
                  cateicon: appIconsHome.paymentScreenMainIcon2,
                  title: "Internet & TV",
                  discription: "Pay for internet and TV \nservice",
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: _maincategorypayment(
                  cateicon: appIconsHome.paymentScreenMainIcon3,
                  title: "Utilities",
                  discription: "Pay for waste, water and\nelectricity bliis",
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: _maincategorypayment(
                  cateicon: appIconsHome.paymentScreenMainIcon4,
                  title: "Government Services",
                  discription: "Pay taxes, fees, and public \ncharges",
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          _categorypayment(
            icon: appIconsHome.paymentScreenIcon1,
            title: 'Pay Estate',
            discription: 'Pay for property or rental bills',
          ),
          _categorypayment(
            icon: appIconsHome.paymentScreenIcon2,
            title: "Insurance",
            discription: "Pay for insurance premiums",
          ),
          _categorypayment(
            icon: appIconsHome.paymentScreenIcon3,

            title: "Finance & Investment",
            discription: "Pay for financial and investment service",
          ),

          _categorypayment(
            icon: appIconsHome.paymentScreenIcon4,
            title: "Trading & Distribution",
            discription: "Pay for trading and distribution services",
          ),
          _categorypayment(
            icon: appIconsHome.paymentScreenIcon5,
            title: "Education",
            discription: "Pay schoo and tuition fees",
          ),
          _categorypayment(
            icon: appIconsHome.paymentScreenIcon6,
            title: "Entertainment",
            discription: "Pay for movie, music, and more",
          ),
          _categorypayment(
            icon: appIconsHome.paymentScreenIcon7,
            title: "Membership & Subscription",
            discription: "Pay for subscriptions",
          ),
          _categorypayment(
            icon: appIconsHome.paymentScreenIcon8,
            title: "Travel & Tours",
            discription: "Pay for flights, hotels, and tours",
          ),
          _categorypayment(
            icon: appIconsHome.paymentScreenIcon9,
            title: "Charity & Donation",
            discription: "Support causes with donations",
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }

  Widget _categorypayment({
    required String icon,
    required String title,
    required String discription,
  }) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        padding: EdgeInsets.all(10),
        height: 70,
        width: .infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xff212d39),
        ),
        child: Row(
          children: [
            Image.asset(icon),
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: .start,
              mainAxisAlignment: .center,
              children: [
                FittedBox(
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: .bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                FittedBox(
                  child: Text(
                    discription,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white24,
                      fontWeight: .bold,
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              size: 15,
              color: Colors.white38,
              fontWeight: .bold,
            ),
          ],
        ),
      ),
    );
  }

  Container _maincategorypayment({
    required String cateicon,
    required String title,
    required String discription,
  }) {
    return Container(
      height: 145,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xff212d39),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: .start,

          children: [
            Image.asset(cateicon, scale: 2.5),
            SizedBox(height: 5),
            FittedBox(
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: .bold,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 2),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
              child: FittedBox(
                child: Text(
                  discription,
                  style: TextStyle(color: Colors.white24, fontWeight: .bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
