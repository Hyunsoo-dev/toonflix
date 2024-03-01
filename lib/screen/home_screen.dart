import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const twentyFiveMinutes = 1500;
  int totalSeconds = twentyFiveMinutes;
  int totalPomodoros = 0;
  bool isPlay = false;

  late Timer timer;

  void onTick(Timer timer) {
    if (totalSeconds == 0) {
      setState(() {
        totalPomodoros = totalPomodoros + 1;
        isPlay = false;
        totalSeconds = twentyFiveMinutes;
      });
      timer.cancel();
    } else {
      setState(() {
        totalSeconds = totalSeconds - 1;
      });
    }
  }

  void onStartPressed() {
    timer = Timer.periodic(const Duration(seconds: 1), onTick);
    setState(() {
      isPlay = true;
    });
  }

  void onPausePressed() {
    timer.cancel();
    setState(() {
      isPlay = false;
    });
  }

  void onPressReset() {
    timer.cancel();
    setState(() {
      totalSeconds = twentyFiveMinutes;
      isPlay = false;
    });
  }

  String format(int seconds) {
    return Duration(seconds: seconds).toString().split(".")[0].substring(2, 7);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red[300],
        body: Column(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  format(totalSeconds),
                  style: TextStyle(
                    color: Theme.of(context).cardColor,
                    fontSize: 89,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    isPlay
                        ? IconButton(
                            icon: const Icon(
                              Icons.stop_circle_outlined,
                            ),
                            onPressed: onPausePressed,
                            iconSize: 120,
                            color: Theme.of(context).cardColor,
                          )
                        : IconButton(
                            icon: const Icon(
                              Icons.play_circle_outline_rounded,
                            ),
                            onPressed: onStartPressed,
                            iconSize: 120,
                            color: Theme.of(context).cardColor,
                          ),
                    IconButton(
                      onPressed: onPressReset,
                      icon: const Icon(Icons.refresh_rounded),
                      color: Theme.of(context).cardColor,
                      iconSize: 50,
                    )
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Pomodoros",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text("$totalPomodoros",
                              style: const TextStyle(
                                fontSize: 58,
                                fontWeight: FontWeight.w600,
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
