import 'package:adb_agent_banking/screens/airtime_purchase/airtime_purchase.dart';
import 'package:adb_agent_banking/screens/customer_service/customer_service.dart';
import 'package:adb_agent_banking/screens/main/drawer.dart';
import 'package:adb_agent_banking/screens/wallet_withdrawal/wallet_withdrawal.dart';
import 'package:flutter/material.dart';

import '../../core/app_constants.dart';
// import '../../main.dart';
import '../bill_payment/bill_payment.dart';
import '../bill_payment/electricity_payment.dart';
import '../case_log/case_log.dart';
import '../create_wallet/create_wallet.dart';

import '../wallet_deposit/deposit.dart';
import '../wallet_inter_bank_transfer/wallet_interbank_transfer.dart';
import 'home_screen2.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xfff3faf4),
          key: _key,
          drawer: drawer(),
          body: Container(
            width: screenWidth,
            height: screenHeight,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                "assets/images/hm1.jpg",
              ),
              fit: BoxFit.cover,
            )),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 3),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4)),
                    child: Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                GestureDetector(
                                  child: Icon(
                                    Icons.menu,
                                    color: AppConstants.KPrimaryColor,
                                    size: 35,
                                  ),
                                  onTap: () {
                                    _key.currentState!.openDrawer();
                                  },
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'YT AGENT',
                                  style: TextStyle(
                                //      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                      fontSize: 18),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex:3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Welcome',
                                style:
                                    TextStyle(fontSize: 14, color: Colors.white),
                              ),
                              Text('SP3496545',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  //  fontWeight: FontWeight.bold,
                                  )),
                              SizedBox(height: 20),
                              Text('23,4444 GHS',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                    //  fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              Text(
                                'Account Balance',
                                style: TextStyle(
                                    fontSize: 13.0, color: Colors.white),
                              )
                            ],
                          ),
                        ),

                    const Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.all(3.0),
                        child: ClipRRect( borderRadius: BorderRadius.all(Radius.circular(7.0)),

                          child: Image(image: AssetImage(
                            "assets/images/passp.jpg",
                          ),fit: BoxFit.cover,
                    height: 70,

                          ),
                        ),
                      ),
                    )],
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                          //      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            HomeCards(
                              myicon: 'assets/icons/6.png',
                              CardTitletop: 'ACCOUNT',
                              CardTitlebottom: 'OPENING',
                              Press: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return CreateWallet();
                                    },
                                  ),
                                );
                              },
                            ),
                            const SizedBox(height: 5.0),
                            HomeCards(
                              myicon: 'assets/icons/5.png',
                              CardTitletop: 'CASH',
                              CardTitlebottom: 'WITHDRAWAL',
                              Press: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return  MyHomePage();
                                    },
                                  ),
                                );
                              },
                            ),
                            const SizedBox(height: 5.0),
                            HomeCards(
                              myicon: 'assets/icons/4.png',
                              CardTitletop: 'CASH',
                              CardTitlebottom: 'DEPOSIT',
                              Press: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return Deposit();
                                    },
                                  ),
                                );
                              },
                            ),
                            const SizedBox(height: 5.0),
                            HomeCards(
                              myicon: 'assets/icons/3.png',
                              CardTitletop: 'FUNDS',
                              CardTitlebottom: 'TRANSFER',
                              Press: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return WalletInterbankTransfer();
                                    },
                                  ),
                                );
                              },
                            ),
                            const SizedBox(height: 5.0),
                            HomeCards(
                              myicon: 'assets/icons/2.png',
                              CardTitletop: 'BILLS',
                              CardTitlebottom: 'PAYMENT',
                              Press: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return BillPayment();
                                    },
                                  ),
                                );
                              },
                            ),
                            const SizedBox(height: 5.0),
                            HomeCards(
                              myicon: 'assets/icons/1.png',
                              CardTitletop: 'AIRTIME',
                              CardTitlebottom: 'TOPUP',
                              Press: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return AirtimePurchase();
                                    },
                                  ),
                                );
                              },
                            ),
                            const SizedBox(height: 5.0),
                            HomeCards(
                              myicon: 'assets/icons/12.png',
                              CardTitletop: 'CUSTOMER',
                              CardTitlebottom: 'SERVICE',
                              Press: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return CustomerService();
                                    },
                                  ),
                                );
                              },
                            ),
                          ]),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}

class HomeCards extends StatelessWidget {
  final String myicon;
  final String? CardTitletop;
  final String? CardTitlebottom;
  final Function? Press;

  const HomeCards(
      {Key? key,
      required this.myicon,
      this.CardTitlebottom,
      this.CardTitletop,
      this.Press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: GestureDetector(
          onTap: Press as void Function()?,
          child: Container(
            decoration: BoxDecoration(
              color: AppConstants.KSecondaryColorlight,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage(
                          myicon,
                        ),
                        width: 28,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(width: 20),
                      Text(
                        CardTitletop! + ' ' + CardTitlebottom!,
                        style: const TextStyle(
                            color: Colors.green, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: AppConstants.KSecondaryColor,
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

class HomeCardLast extends StatelessWidget {
  final IconData? myicon;
  final String? CardTitle;

  const HomeCardLast({Key? key, this.myicon, this.CardTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        /// margin: const EdgeInsets.symmetric( horizontal: 40.0),
        decoration: BoxDecoration(
            color: const Color(0xff7fe988), borderRadius: BorderRadius.circular(4)),
        child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 6.0),
            child: Stack(
              children: [
                Positioned(child: Icon(myicon)),
                Center(child: Text(CardTitle!)),
              ],
            )),
      ),
    );
  }
}
