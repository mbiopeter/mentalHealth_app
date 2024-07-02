import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mentalhealth/util/data_divider.dart';
import 'package:mentalhealth/util/message.dart';
import 'package:mentalhealth/util/reply.dart';

class ChartScreen extends StatelessWidget {
  const ChartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 4,
                      horizontal: 4,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12)),
                    child: IconButton(
                      onPressed: () {
                        // Navigate back to the first screen (HomeScreen)
                        Navigator.of(context)
                            .popUntil((route) => route.isFirst);
                      },
                      icon: const Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                    )),
                const Column(
                  children: [
                    Text(
                      'Babby Singer✍',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      'Online',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12)),
                  child: const Icon(
                    Icons.call_rounded,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
              child: Container(
                width: double.infinity,
                color: Colors.grey[300],
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 25,
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView(
                          children: const [
                            Message(
                              message: 'Hi Joan, how are you?',
                              time: '11:04',
                            ),
                            Reply(
                              message: 'I am fine Peter, how can I help?',
                              time: '11:10',
                            ),
                            Reply(
                              message: 'Anything?',
                              time: '11:11',
                            ),
                            Message(
                              message:
                                  'Can you help develop a mental health application with Flutter?',
                              time: '11:04',
                            ),

                            //Today
                            DataDivider(
                              date: 'Yesterday',
                            ),

                            Reply(
                              message:
                                  'I would like to work on such an apllication, when do we begin?',
                              time: '12:01',
                            ),
                            Message(
                              message: 'Are you good with next week?',
                              time: '13:34',
                            ),
                            Reply(
                              message: '👍',
                              time: '12:01',
                            ),
                            Message(
                              message:
                                  'Have a good day, let meet early next week 👏',
                              time: '13:34',
                            ),
                          ],
                        ),
                      ),

                      //chart input
                      Container(
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(189, 255, 255, 255)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 25,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(198, 227, 227, 227),
                                borderRadius: BorderRadius.circular(20)),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Text('Write a message..'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Icon(Icons.photo_album_outlined),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
