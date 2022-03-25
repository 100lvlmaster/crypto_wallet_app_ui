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
        backgroundColor: Color(0xff151439),
        items: [
          BottomNavigationBarItem(
            backgroundColor: Color(0xff151439),
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
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
                    TextSpan(
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
                    const VerticalDivider(
                      color: Colors.transparent,
                      width: 5,
                    ),
                    CoinTileSquare(size: size),
                    const VerticalDivider(color: Colors.transparent),
                    CoinTileSquare(size: size),
                    const VerticalDivider(color: Colors.transparent),
                    CoinTileSquare(size: size),
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
                      Text('Market Statistics'),
                      Spacer(),
                      Text('All'),
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

class CoinTileSquare extends StatelessWidget {
  const CoinTileSquare({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.white.withOpacity(0.12),
      ),
      padding: const EdgeInsets.all(15),
      width: size.width * 0.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/bitcoin.png',
                height: 36,
                width: 36,
              ),
              const VerticalDivider(
                color: Colors.transparent,
                width: 7,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Bitcoin',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Divider(
                    color: Colors.transparent,
                    height: 2,
                  ),
                  Text(
                    'BTC',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white.withOpacity(0.4),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Text(
                r'$6780',
              ),
              const Spacer(),
              RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(child: Icon(Icons.arrow_drop_down)),
                    TextSpan(text: '11.75%')
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CoinTile extends StatelessWidget {
  final Widget logo;
  final String name;
  final String code;
  final String price;
  final double metric;
  const CoinTile({
    Key? key,
    required this.code,
    required this.name,
    required this.price,
    required this.metric,
    required this.logo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 40,
          width: 40,
          child: logo,
        ),
        const VerticalDivider(color: Colors.transparent),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name),
            Text(code),
          ],
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(price),
            Text(
              '${metric < 0 ? '' : '+'}$metric%',
              style: TextStyle(
                color: metric < 0 ? Colors.red : Colors.green,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class AccountHeader extends StatelessWidget {
  const AccountHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good Morning',
              style: TextStyle(
                color: Colors.white.withOpacity(0.7),
                fontSize: 15.32,
                fontFamily: GoogleFonts.montserrat().fontFamily,
              ),
            ),
            const Divider(color: Colors.transparent, height: 3),
            Text(
              'Rabah',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28.08,
                fontWeight: FontWeight.w600,
                fontFamily: GoogleFonts.epilogue().fontFamily,
              ),
            ),
          ],
        ),
        const Spacer(),
        Image.asset('assets/profile.png'),
      ],
    );
  }
}
