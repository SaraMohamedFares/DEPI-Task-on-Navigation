import 'package:flutter/material.dart';

class CallsPage extends StatefulWidget {
  const CallsPage({super.key});

  @override
  State<CallsPage> createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {

  final List<Map<String, dynamic>> calls = [
    {
      'name': 'Habiba',
      'image': 'assets/images/habiba.avif',
      'icon': Icons.call_made,
      'time': "Yesterday, 11:25 pm",
    },
    {
      'name': 'Ahmed',
      'image': 'assets/images/ahmed.avif',
      'icon': Icons.call_received,
      'time': "Yesterday, 3:19 pm",
    },
    {
      'name': 'Youssef',
      'image': 'assets/images/chris.avif',
      'icon': Icons.call_received,
      'time': "10 August, 10:48 am",
    },
    {
      'name': 'Hanen',
      'image': 'assets/images/hanen.avif',
      'icon': Icons.call_made,
      'time': "29 July, 5:50 am",
    },
    {
      'name': 'Mariam',
      'image': 'assets/images/mariam.avif',
      'icon': Icons.call_made,
      'time': "18 July, 10:11 pm",
    },
    {
      'name': 'Mohamed',
      'image': 'assets/images/mohamed.avif',
      'icon': Icons.call_received,
      'time': "23 June, 4:53 am",
    },
    {
      'name': 'Shahd',
      'image': 'assets/images/shahd.avif',
      'icon': Icons.call_made,
      'time': "22 June, 1:15 pm",
    },
    {
      'name': 'Asmaa',
      'image': 'assets/images/Asmaa.avif',
      'icon': Icons.call_received,
      'time': "15 May, 2:27 am",
    },
    {
      'name': 'Menna',
      'image': 'assets/images/menna.avif',
      'icon': Icons.call_made,
      'time': "10 May, 3:30 pm",
    },
    {
      'name': 'Safy',
      'image': 'assets/images/safy.avif',
      'icon': Icons.call_made,
      'time': "15 April, 4:15 pm",
    },
  ];


  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context); // get current theme

    return Column(
      children: [
        Expanded(
          child: calls.isEmpty
              ? Center(
            child: Text(
              "No Calls yet.",
              style: theme.textTheme.bodyLarge,
            ),
          )
              : ListView.builder(
            itemCount: calls.length,
            itemBuilder: (context, index) {
              final name = calls[index]['name'];
              final image = calls[index]['image'];
              final iconData = calls[index]['icon'];
              final timeText = calls[index]['time'];

              return Card(
                color: theme.cardColor, // matches theme
                child: SizedBox(
                  height: 80,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(image),
                      radius: 20,
                    ),
                    title: Text(
                      name,
                      style: TextStyle(fontSize: 20,
                          color: (iconData == Icons.call_received)
                              ? Colors.red
                              : Theme.of(context).textTheme.bodyLarge?.color,),

                    ),
                    subtitle: Row(
                      children: [
                        Icon(
                          iconData,
                          size: 18,
                            color: (iconData == Icons.call_received)
                                ? Colors.red
                                : Colors.green,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          timeText,
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    trailing: Icon(Icons.call),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
