import 'package:flutter/material.dart';

class PhotoGallery extends StatelessWidget {
  const PhotoGallery({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    final List<String> images = List.generate(
      100,
          (index) => 'https://picsum.photos/id/${index + 150}/300/200',
    );

    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Photo Gallery")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: width ~/ 120,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,

          ),
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Card(
              child: InkWell(
                onTap: () async {
                  await showDialog(
                    context: context,
                    builder: (_) => Dialog(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.network(
                            images[index],
                            errorBuilder: (context, error, stackTrace) {
                              return Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Icon(Icons.broken_image, size: 80, color: Colors.grey),
                              );
                            },
                            loadingBuilder: (context, child, loadingProgress) {
                              if (loadingProgress == null) return child;
                              return Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: CircularProgressIndicator(),
                              );
                            },
                          ),

                        ],
                      ),
                    ),
                  );
                },
                child: Image.network(
                  images[index],
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Icon(Icons.broken_image, color: Colors.grey);
                  },
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
