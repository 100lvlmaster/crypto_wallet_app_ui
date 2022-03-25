import 'package:crypto_wallet_app/icon/my_flutter_app_icons.dart';
import 'package:crypto_wallet_app/widgets/account_header.dart';
import 'package:crypto_wallet_app/widgets/coin_tile.dart';
import 'package:crypto_wallet_app/widgets/coin_tile_square.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: const IconThemeData(
          color: Color(0xff4376FE),
        ),
        selectedLabelStyle: const TextStyle(
          color: Color(0xff4376FE),
        ),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: const Color(0xff151439),
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Color(0xff151439),
            label: "Home",
            icon: Icon(MyFlutterApp.vector2),
          ),
          BottomNavigationBarItem(
            label: "Portfolio",
            icon: Icon(MyFlutterApp.vector),
          ),
          BottomNavigationBarItem(
            label: "Portfolio",
            icon: Icon(MyFlutterApp.arrowBtn),
          ),
          BottomNavigationBarItem(
            label: "Prices",
            icon: Icon(MyFlutterApp.vector3),
          ),
          BottomNavigationBarItem(
            label: "Settings",
            icon: Icon(Icons.person_outline_rounded),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: <Color>[
              Color(0xff302E5A),
              Color(0xff1F1E46),
              Color(0xff1F1E46),
            ],
          ),
        ),
        child: DefaultTextStyle(
          style: TextStyle(
            color: Colors.white,
            fontFamily: GoogleFonts.inter().fontFamily,
          ),
          child: ListView(
            padding: const EdgeInsets.all(10),
            physics: const BouncingScrollPhysics(),
            children: [
              const Divider(color: Colors.transparent, height: 20),
              const AccountHeader(),
              const Divider(color: Colors.transparent),
              Text(
                'Balance',
                style: TextStyle(
                  fontFamily: GoogleFonts.montserrat().fontFamily,
                  fontSize: 15.32,
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
              const Divider(color: Colors.transparent, height: 4),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'USD 13220.40\t',
                      style: TextStyle(
                        fontFamily: GoogleFonts.inter().fontFamily,
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const TextSpan(
                      text: '+7.65%',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(color: Colors.transparent),
              SizedBox(
                height: 155,
                width: size.width,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const VerticalDivider(color: Colors.transparent, width: 5),
                    CoinTileSquare(
                      logo: Image.asset('assets/bitcoin.png'),
                      graph: Image.asset('assets/bitcoin-graph.png'),
                      name: 'Bitcoin',
                      code: 'BTC',
                      price: 6780,
                      metric: 11.75,
                    ),
                    const VerticalDivider(color: Colors.transparent),
                    CoinTileSquare(
                      logo: Image.asset('assets/ethereum.png'),
                      graph: Image.asset('assets/ethereum-graph.png'),
                      name: 'Ethereum',
                      code: 'ETH',
                      price: 1478.10,
                      metric: 4.75,
                    ),
                    const VerticalDivider(color: Colors.transparent),
                    CoinTileSquare(
                      logo: Image.asset('assets/ripple.png'),
                      graph: Image.asset('assets/ripple-graph.png'),
                      name: 'Ripple',
                      code: 'XRP',
                      price: 1478.10,
                      metric: -4.75,
                    ),
                    const VerticalDivider(color: Colors.transparent),
                  ],
                ),
              ),
              const Divider(color: Colors.transparent),
              ListView(
                physics: const ClampingScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.all(20),
                children: [
                  Row(
                    children: const [
                      Text(
                        'Market Statistics',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'All',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  const Divider(color: Colors.transparent, height: 20),
                  CoinTile(
                    logo: Image.asset('assets/bitcoin.png'),
                    name: "Bitcoin",
                    code: "BTC",
                    price: 'USDC 99,284.01',
                    metric: 68.3,
                  ),
                  Divider(color: Colors.white.withOpacity(0.1)),
                  CoinTile(
                    logo: Image.asset('assets/ethereum.png'),
                    name: "Ethereum",
                    code: "ETH",
                    price: 'USDC 24,933.56',
                    metric: 32.1,
                  ),
                  Divider(color: Colors.white.withOpacity(0.1)),
                  CoinTile(
                    logo: Image.asset('assets/ripple.png'),
                    name: "Ripple",
                    code: "XRP",
                    price: 'USDC 0.04',
                    metric: -16.8,
                  ),
                  Divider(color: Colors.white.withOpacity(0.1)),
                  CoinTile(
                    logo: Image.asset('assets/litecoin.png'),
                    name: "Litecoin Ca...",
                    code: "LTC",
                    price: 'USDC 245.72',
                    metric: 11.5,
                  ),
                  Divider(color: Colors.white.withOpacity(0.1)),
                  CoinTile(
                    logo: Image.asset('assets/ravencoin.png'),
                    name: "Ravencoin",
                    code: "RVN",
                    price: 'USDC 10,015.90',
                    metric: -9.0,
                  ),
                  const Divider(color: Colors.transparent, height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            backgroundColor: const Color(0xff45B68D),
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                          child: Text(
                            "Deposit",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.87,
                              fontFamily: GoogleFonts.montserrat().fontFamily,
                            ),
                          ),
                        ),
                      ),
                      const VerticalDivider(color: Colors.transparent),
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            backgroundColor: const Color(0xffE8503A),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                          child: Text(
                            "Withdraw",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.87,
                              fontFamily: GoogleFonts.montserrat().fontFamily,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 50),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
