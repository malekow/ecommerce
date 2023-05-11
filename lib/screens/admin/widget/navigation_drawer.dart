
import 'package:flutter/material.dart';
import 'package:flutter_full_ecommerce_app/screens/admin/products/products.dart';


class NavigationsDrawer extends StatelessWidget {
  const NavigationsDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.orange,
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        children: [
         ListTile(

              contentPadding: const EdgeInsets.all(0),
              leading: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue
                ),
                child: const CircleAvatar(
                  radius: 30,
                  child: Icon(Icons.person),
                ),
              ),
              title: const Text('name',
              style: TextStyle(color:Colors.white, fontSize: 18),
              ),
              subtitle: const Text('test01@gmail.com',
              style: TextStyle(color:Colors.white, fontSize: 18),
              ),
         
            ),
            SizedBox(height: 50,),
            ListTile(
              onTap: () => Navigator.push(context, 
              MaterialPageRoute(builder: (context) => ProductsScreen())),
              title: Text('Products',
              style: TextStyle(color:Colors.white, fontSize: 18),
              ),
              leading: Icon(Icons.menu,color: Colors.white),
            ),

             
            ListTile(
              title: Text('Orders',
              style: TextStyle(color:Colors.white, fontSize: 18),
              ),
              leading: Icon(Icons.shopping_cart,color: Colors.white),
            ),

           
            ListTile(
              title: Text('Users',
              style: TextStyle(color:Colors.white, fontSize: 18),
              ),
              leading: Icon(Icons.group,color: Colors.white),
            ),
            
            ListTile(
              title: Text('Logout',
              style: TextStyle(color:Colors.white, fontSize: 18),
              ),
              leading: Icon(Icons.logout, color: Colors.white,),
            ),

      ]),
    );
  }
}