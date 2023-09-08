import 'package:flutter/material.dart';
import 'package:nobis/widgets/Button.dart';
import 'package:nobis/widgets/currency_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0XFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Hey Selena',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Text(
                'Total Balance',
                style: TextStyle(
                    fontSize: 20, color: Colors.white.withOpacity(0.8)),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                '\$5 184 482',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(
                      text: 'Transfer',
                      bgColor: Color(0xFFF1B33B),
                      textColor: Colors.black),
                  Button(
                      text: 'Request',
                      bgColor: Color(0xFF1F2123),
                      textColor: Colors.white)
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Wallets',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w600),
                  ),
                  Text('View All',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 14,
                      )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const CurrencyCard(
                name: 'Euro',
                code: 'EUR',
                amount: '6 428',
                icon: Icons.euro_rounded,
                order: 1,
                isInverted: false,
              ),
              const CurrencyCard(
                name: 'Bitcoin',
                code: 'BTC',
                amount: '1 898',
                icon: Icons.currency_bitcoin_rounded,
                order: 2,
                isInverted: true,
              ),
              const CurrencyCard(
                name: 'Dollar',
                code: 'EUR',
                amount: '428',
                icon: Icons.attach_money_rounded,
                order: 3,
                isInverted: false,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
