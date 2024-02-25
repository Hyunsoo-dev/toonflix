import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toonflix/screen/home_screen.dart';
import 'package:toonflix/widgets/button.dart';
// import 'package:toonflix/widgets/button.dart';
// import 'package:toonflix/widgets/curreny_card.dart';

class Player {
  String? name;

  Player({required this.name});
}

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Color(0xFF232B55),
          ),
        ),
        cardColor: const Color(0xFFF4EDDB),
      ),
      home: const HomeScreen(),
    );
  }
}

// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   bool showTitle = true;

//   void toggleTitle() {
//     setState(() {
//       showTitle = !showTitle;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         textTheme: const TextTheme(
//           titleLarge: TextStyle(
//             color: Colors.red,
//           ),
//         ),
//       ),
//       home: Scaffold(
//         backgroundColor: const Color(0xFFF4EDDB),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                 style: const ButtonStyle(
//                   backgroundColor: MaterialStatePropertyAll(Colors.indigo),
//                 ),
//                 onPressed: toggleTitle,
//                 child: const Text(
//                   "Toggle Title",
//                   style: TextStyle(
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//               showTitle ? const MyLargeTitle() : const Text("Nothing"),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyLargeTitle extends StatefulWidget {
//   const MyLargeTitle({
//     super.key,
//   });

//   @override
//   State<MyLargeTitle> createState() => _MyLargeTitleState();
// }

// class _MyLargeTitleState extends State<MyLargeTitle> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     print('initState');
//   }

//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     print("dispose");
//   }

//   @override
//   Widget build(BuildContext context) {
//     print('build');
//     return Text(
//       "My Large Title",
//       style: TextStyle(
//           fontSize: 30, color: Theme.of(context).textTheme.titleLarge?.color),
//     );
//   }
// }


// class App extends StatelessWidget {
//   const App({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           backgroundColor: const Color(0xFF181818),
//           body: SingleChildScrollView(
//             child: Padding(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 20,
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const SizedBox(
//                       height: 80,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.end,
//                           children: [
//                             const Text(
//                               'Hey, eddie',
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 28,
//                                   fontWeight: FontWeight.w600),
//                             ),
//                             Text(
//                               'Welcome back',
//                               style: TextStyle(
//                                 color: Colors.white.withOpacity(0.88),
//                                 fontSize: 18,
//                               ),
//                             ),
//                           ],
//                         )
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 50,
//                     ),
//                     Text(
//                       "Total Balance",
//                       style: TextStyle(
//                         color: Colors.white.withOpacity(0.8),
//                         fontSize: 22,
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     const Text(
//                       '\$5 194 482',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.w600,
//                         fontSize: 42,
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 30,
//                     ),
//                     const Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Button(
//                             text: "Transfer",
//                             bgColor: Color(0xFFF1B33B),
//                             textColor: Colors.black),
//                         Button(
//                             text: 'Request',
//                             bgColor: Color(0xFF1F2123),
//                             textColor: Colors.white)
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 120,
//                     ),
//                     Row(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         const Text(
//                           "Wallets",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 36,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                         Text("View All",
//                             style: TextStyle(
//                               color: Colors.white.withOpacity(0.8),
//                               fontSize: 18,
//                             )),
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     const CurrencyCard(
//                       offset: Offset(0, 0),
//                       name: "Euro",
//                       code: "EUR",
//                       amount: "6 428",
//                       icon: Icons.euro_rounded,
//                       isInverted: false,
//                     ),
//                     const CurrencyCard(
//                       offset: Offset(0, -20),
//                       name: "Bitcoin",
//                       code: "BTC",
//                       amount: "9 785",
//                       icon: Icons.currency_bitcoin_rounded,
//                       isInverted: true,
//                     ),
//                     const CurrencyCard(
//                       offset: Offset(0, -40),
//                       name: "Dollar",
//                       code: "USD",
//                       amount: "428",
//                       icon: Icons.money,
//                       isInverted: false,
//                     ),
//                   ],
//                 )),
//           )),
//     );
//   }
// }
