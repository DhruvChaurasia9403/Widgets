import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
class Images extends StatefulWidget {
  const Images({super.key});

  @override
  State<Images> createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
  final List<String> imageUrls = [
    'https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?fit=crop&w=500&h=500',
    'https://images.unsplash.com/photo-1517694712202-14dd9538aa97?fit=crop&w=500&h=500',
    'https://images.unsplash.com/photo-1531177078444-ccbd8fc964bb?fit=crop&w=500&h=500',
    'https://images.unsplash.com/photo-1516239328453-c3c720e8f11f?fit=crop&w=500&h=500',
    'https://images.unsplash.com/photo-1521747116042-5a810fda9664?fit=crop&w=500&h=500',
    'https://images.unsplash.com/photo-1517411032315-d07f9565aa1c?fit=crop&w=500&h=500',
    'https://images.unsplash.com/photo-1501426026826-31c667bdf23d?fit=crop&w=500&h=500',
    'https://images.unsplash.com/photo-1522204523234-8728b6e1dca2?fit=crop&w=500&h=500',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: Text('Images'),
        backgroundColor: Colors.blueGrey,
      ),
      body:
      // GridView.builder(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2,
      //     crossAxisSpacing: 10,
      //     mainAxisSpacing: 10,
      //   ),
      //
      //   itemCount: imageUrls.length,
      //   itemBuilder: (BuildContext context, int index) {
      //     return Dismissible(
      //       key: Key(imageUrls[index]),
      //       onDismissed: (direction) {
      //         setState(() {
      //           imageUrls.removeAt(index);
      //         });
      //
      //         ScaffoldMessenger.of(context).showSnackBar(
      //           SnackBar(content: Text('Image dismissed')),
      //         );
      //       },
      //       background: Container(color: Colors.red),
      //       child: Container(
      //         decoration: BoxDecoration(
      //           boxShadow: [
      //             BoxShadow(
      //               color: Colors.black.withOpacity(0.1),
      //               spreadRadius: 2,
      //               blurRadius: 4,
      //             ),
      //           ]
      //         ),
      //         child: Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Material(
      //             elevation: 10,
      //             borderRadius: BorderRadius.circular(10),
      //             child: ClipRRect(
      //               borderRadius: BorderRadius.circular(10),
      //               child: Image.network(
      //                 imageUrls[index],
      //                 fit: BoxFit.cover,
      //               ),
      //             ),
      //           ),
      //         ),
      //       ),
      //     );
      //   },
      // ),

      Container(
        child:CachedNetworkImage(
          imageUrl: 'https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?fit=crop&w=500&h=500',
          placeholder: (context, url) => CircularProgressIndicator(),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      ),
    );
  }
}