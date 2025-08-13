import 'package:flutter/material.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  final List<Map<String, dynamic>> chats = [
    {
      'name': 'Habiba',
      'image': 'assets/images/habiba.avif',
      'message': 'Hey, how are you?',
      'date': '10:38 pm',
      'num': 1,
    },
    {
      'name': 'Ahmed',
      'image': 'assets/images/ahmed.avif',
      'message': 'Hello',
      'date': '10:08 pm',
      'num': 2,
    },
    {
      'name': 'Youssef',
      'image': 'assets/images/chris.avif',
      'message': 'Is this okay?',
      'date': '10:08 pm',
      'num': 0,
    },
    {
      'name': 'Hanen',
      'image': 'assets/images/hanen.avif',
      'message': 'Thank you!',
      'date': '2:32 am',
      'num': 2,
    },
    {
      'name': 'Mariam',
      'image': 'assets/images/mariam.avif',
      'message': 'See you soon!',
      'date': 'Yesterday',
      'num': 3,
    },
    {
      'name': 'Mohamed',
      'image': 'assets/images/mohamed.avif',
      'message': 'Got it 👍',
      'date': '8/10/25',
      'num': 0,
    },
    {
      'name': 'Shahd',
      'image': 'assets/images/shahd.avif',
      'message': 'Let’s meet tomorrow',
      'date': '8/8/25',
      'num': 1,
    },
    {
      'name': 'Asmaa',
      'image': 'assets/images/Asmaa.avif',
      'message': 'Can you call me back?',
      'date': '8/2/25',
      'num': 2,
    },
    {
      'name': 'Menna',
      'image': 'assets/images/menna.avif',
      'message': 'All good!',
      'date': '7/27/25',
      'num': 0,
    },
    {
      'name': 'Safy',
      'image': 'assets/images/safy.avif',
      'message': 'Talk later',
      'date': '7/21/25',
      'num': 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Expanded(
          child: chats.isEmpty
              ? Center(
            child: Text(
              "No Chats yet.",
              style: theme.textTheme.bodyLarge,
            ),
          )
              : ListView.builder(
            itemCount: chats.length,
            itemBuilder: (context, index) {
              final chat = chats[index];

              return Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(chat['image']),
                      radius: 24,
                    ),
                    title: Text(
                      chat['name'],
                      style: const TextStyle(fontSize: 18),
                    ),
                    subtitle: Text(
                      chat['message'],
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[600],
                      ),
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          chat['date'],
                          style: TextStyle(
                            fontSize: 14,
                            color: chat['num'] == 0
                                ? Colors.grey[600]
                                : Colors.green,
                          ),
                        ),
                        if (chat['num'] > 0) ...[
                          const SizedBox(height: 6),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              '${chat['num']}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                  Divider(thickness: 0.5,)
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
