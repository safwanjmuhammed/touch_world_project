import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  final String image;
  const ProductScreen({super.key, required this.image});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    double mheight = MediaQuery.of(context).size.height;
    double mWidth = MediaQuery.of(context).size.width;
    //
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 241, 241, 237),
        ),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 241, 241, 237),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(40),
                      bottomLeft: Radius.circular(40))),
              height: 400,
              child: Center(
                child: SizedBox(
                    height: mheight * 2,
                    width: mWidth * 2,
                    child: Image.network(widget.image)),
              ),
              // color: ,
            )
          ],
        ));
  }
}
