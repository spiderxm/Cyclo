import 'package:flutter/material.dart';

class ImageDisplayWidget extends StatefulWidget {
  List<String> images;

  ImageDisplayWidget(this.images);

  @override
  _ImageDisplayWidgetState createState() => _ImageDisplayWidgetState();
}

class _ImageDisplayWidgetState extends State<ImageDisplayWidget> {
  int index = 0;

  onTap(int index) {
    setState(() {
      this.index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            height: 250,
            child: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  widget.images[index],
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
        ),
        Container(
          height: 100,
          child: ListView.builder(
            itemCount: widget.images.length,
            itemBuilder: (ctx, i) {
              return ImagePlaceHolderWidget(
                  widget.images[i], index == i, onTap, i);
            },
            scrollDirection: Axis.horizontal,
          ),
        )
      ],
    );
  }
}

class ImagePlaceHolderWidget extends StatelessWidget {
  String imageUrl;
  bool isSelected;
  Function onTap;
  int index;

  ImagePlaceHolderWidget(
      this.imageUrl, this.isSelected, this.onTap, this.index);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: FlatButton(
            padding: EdgeInsets.all(0),
            onPressed: () {
              onTap(index);
            },
            child: Container(
              child: ClipRRect(
                  child: Image.network(imageUrl),
                  borderRadius: BorderRadius.circular(20)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: isSelected == true
                    ? Border.all(color: Colors.orange, width: 2)
                    : Border.all(width: .5, color: Colors.grey),
              ),
            )),
      ),
    );
  }
}
