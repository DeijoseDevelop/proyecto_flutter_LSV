import 'package:flutter/material.dart';

class Accordion extends StatefulWidget {
  final String image;
  final String title;
  final Column content;
  const Accordion({Key? key, required this.title, required this.content, required this.image})
      : super(key: key);

  @override
  State<Accordion> createState() => _AccordionState();
}

class _AccordionState extends State<Accordion> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Column(children: [
        ListTile(
          title: Text(widget.title),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(widget.image),
          ),
          trailing: IconButton(
            icon: Icon(_isExpanded ? Icons.expand_less : Icons.expand_more),
            onPressed: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
          ),
        ),
        _isExpanded
            ? Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: widget.content,
              )
            : Container(),
      ]),
    );
  }
}
