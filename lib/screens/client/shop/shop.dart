import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../../constants/constants.dart';
import '../../../models/products.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var sizeH = MediaQuery.of(context).size.height;
    var sizeW = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue,
        title: Image.asset(
          'assets/images/logo.png',
          height: 70,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                size: 35,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        hintText: 'Search products',
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: sizeH * 0.07,
                    width: sizeW * 0.15,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Icon(
                      Icons.tune,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: CarouselSlider(
                  options: CarouselOptions(
                      viewportFraction: 1, autoPlay: true, height: sizeH * 0.2),
                  items: Constants.carouselImages.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Image.asset(
                          i,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: sizeH * 0.07,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Constants.categoryImages.length,
                  itemBuilder: (BuildContext context, int index) {
                    var cat = Constants.categoryImages[index];
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Image.asset(
                              cat['image'].toString(),
                              width: 40,
                            ),
                            Text(cat['title'].toString()),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 10),
              Text(
                'New arrivals', 
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                   color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              Flexible(
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: sizeH * 0.3,
                  ),
                  itemCount: listproducts.length,
                  itemBuilder: (BuildContext context, int index) {
                    var products = listproducts[index];
                    return Card(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Color(0xfffff0CD),
                            ),
                            child: Image.asset(
                              products.image,
                              height: 150,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(products.name,style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(
                            height: 5,
                          ),
                          Text('\$'+products.price.toString()),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
