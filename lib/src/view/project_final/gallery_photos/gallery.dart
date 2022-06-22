
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class GalleryList extends StatefulWidget {
  const GalleryList({Key? key}) : super(key: key);

  @override
  State<GalleryList> createState() => _GalleryState();
}

class _GalleryState extends State<GalleryList> {
  bool? loading;
  List<String> ids = ['0', '10', '1002'];

  @override
  void initState() {
    loading = true;
    ids = [];
    _loadImageIds();
    super.initState();
  }

  void _loadImageIds() async {
    final response = await http.get(Uri.parse('https://picsum.photos/v2/list'));
    final json = jsonDecode(response.body);
    List<String> _ids = [];
    for (var image in json) {
      _ids.add(image['id']);
    }
    setState(() {
      loading = false;
      ids = _ids;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (loading!) {
      return const Center(child: CircularProgressIndicator());
    }
    return Scaffold(
        appBar: AppBar(
          title: const Text('Photo Gallery'),
          centerTitle: true,
        ),
        body: GridView.builder(
          physics: const BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemBuilder: (BuildContext context, int index) => GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ImagePage(ids[index]),
              ));
            },
            child:
                Image.network('https://picsum.photos/id/${ids[index]}/300/300'),
          ),
          itemCount: ids.length,
        ));
  }
}

class ImagePage extends StatelessWidget {
  final String id;
  const ImagePage(this.id, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Image.network('https://picsum.photos/id/$id/600/600')),
    );
  }
}
