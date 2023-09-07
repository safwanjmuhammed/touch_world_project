import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:touch_world_project/model/product_model.dart';
import 'package:touch_world_project/screens/product_screen.dart';
import 'package:touch_world_project/screens/services/product_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ProductsModel> productData = [];
  Future<void> fetchProducts() async {
    final service = ProductService();
    final data = await service.getProducts();
    setState(() {
      productData = data;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Bags',
            style: GoogleFonts.poppins(),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.heart)),
            const Padding(padding: EdgeInsets.only(right: 15)),
            const Icon(Icons.shopping_cart)
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              if (productData.isEmpty)
                const Center(child: CircularProgressIndicator()),
              Expanded(
                child: ListView.builder(
                    itemCount: productData.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductScreen(
                                        image: productData[index].image,
                                      ))),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(color: Colors.grey, blurRadius: 6)
                                ],
                                color:
                                    const Color.fromARGB(255, 224, 221, 221)),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 40,
                                      backgroundImage: NetworkImage(
                                          productData[index].image),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            right: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                5)),
                                    const Icon(FontAwesomeIcons.heart),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            right: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                7)),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          productData[index].name,
                                          style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(productData[index].brand,
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w400)),
                                        Text(
                                          '₹${productData[index].price}',
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ));
  }
}
