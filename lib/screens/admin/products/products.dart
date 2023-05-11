import 'package:flutter/material.dart';
import 'package:flutter_full_ecommerce_app/models/products.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  Widget build(BuildContext context) {
     var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Products'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
            mainAxisExtent: size.height *0.18,
          ),
          itemCount: listproducts.length,
          itemBuilder: (BuildContext context, int index) {
            var products = listproducts[index];
            return Card(
              child: Container(
                color:Colors.white,
                child: Column(
                  children: [
                    Text(products.name),
                    Image.asset(products.image, height: 50,),
                    Row(
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.delete, 
                        color: Colors.red,)),
                      ],
                    )
                  ],
                )
              ),
            );
          },
        ),
      ),
    );
  }
}