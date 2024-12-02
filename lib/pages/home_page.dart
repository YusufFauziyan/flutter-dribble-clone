import 'package:clone_dribble/utils/emoticon_face.dart';
import 'package:clone_dribble/utils/exercise_tile.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
      ]),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          // Hi Yusuf
                          'Hi Yusuf!',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4),
                        Text(DateFormat('dd MMM, yyyy').format(DateTime.now()),
                            style: TextStyle(
                              color: Colors.blue[200],
                              fontSize: 12,
                            ))
                      ],
                    ),

                    // Notification
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12)),
                        padding: const EdgeInsets.all(12),
                        child: const Icon(Icons.notifications,
                            color: Colors.white))
                  ],
                ),

                const SizedBox(height: 25),

                // search bar
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12)),
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Search",
                        style: TextStyle(color: Colors.blue[200]),
                      )
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                // How Do You Feel Today?
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "How Do You Feel Today?",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.more_horiz, color: Colors.white)
                  ],
                ),

                const SizedBox(height: 25),

                // Emoticon Face
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        EmoticonFace(
                          emoticonFace: '😩',
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Bad',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        EmoticonFace(
                          emoticonFace: '🙂',
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Fine',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        EmoticonFace(
                          emoticonFace: '😃',
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Well',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        EmoticonFace(
                          emoticonFace: '🤩',
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Excellent',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Expanded(
              child: Container(
            padding: const EdgeInsets.all(25),
            color: Colors.grey[200],
            child: Column(
              children: [
                // Excercises Heading
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Excercises',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.more_horiz)
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),

                Expanded(
                    child: ListView(
                  children: const [
                    ExerciseTile(
                      icon: Icons.favorite,
                      color: Colors.orange,
                      exerciseName: 'Speaking Skills',
                      exerciseCount: 12,
                    ),
                    ExerciseTile(
                      icon: Icons.person,
                      color: Colors.green,
                      exerciseName: 'Reading Skills',
                      exerciseCount: 12,
                    ),
                    ExerciseTile(
                      icon: Icons.star,
                      color: Colors.pink,
                      exerciseName: 'Writing Skills',
                      exerciseCount: 20,
                    ),
                  ],
                ))

                // list view of excercises
              ],
            ),
          ))
        ],
      )),
    );
  }
}
