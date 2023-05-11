import 'package:flutter/material.dart';
import 'package:flutter_full_ecommerce_app/screens/client/account/widgets/icon_widget.dart';


class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(
         child: ListView(
          padding: EdgeInsets.all(24),
          children: [
            SizedBox(height: 10),
            ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue
                ),
                child: CircleAvatar(
                  radius: 30,
                  child: Icon(Icons.person),
                ),
              ),
              title: Text('test'),
              subtitle: Text('test01@gmail.com'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            SizedBox(height: 30,),
       
            ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue
                ),
                child: Icon(Icons.dark_mode, 
                color: Colors.white,),
              ),
              title: Text('Dark mode'),
              
              trailing: Icon(Icons.light_mode),
            ),
            Divider(),
            SizedBox(height: 20,),    
            Text('GENERAL'),
       
            ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: IconWidget(color: Colors.greenAccent, icon: Icons.person),
              title: Text('Account Settings'),            
              subtitle: Text('Change Your Profile Info'),            
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          SizedBox(height:20),
            ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: IconWidget(color: Colors.cyanAccent, icon: Icons.lock),
              title: Text('Change Password'),            
              subtitle: Text('update your password'),            
              trailing: Icon(Icons.arrow_forward_ios),
            ),
       
            SizedBox(height:20),
            ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: IconWidget(color: Colors.orangeAccent, icon: Icons.lock),
              title: Text('My Orders'),            
              subtitle: Text('your orders history'),            
              trailing: Icon(Icons.arrow_forward_ios),
            ),
       
            SizedBox(height:20),
            ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: IconWidget(color: Colors.deepPurple, icon: Icons.logout),
              title: Text('Logout'),                       
             
            ),
            Divider(),
            SizedBox(height: 20,),
            Text('FEEDBACK'),
             ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: IconWidget(color: Colors.indigo, icon: Icons.call),
              title: Text('Call us'),                       
             
            ),
       
              SizedBox(height: 20,),       
             ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: IconWidget(color: Colors.brown, icon: Icons.info),
              title: Text('About Xaliye'),                       
             
            ),
       
              SizedBox(height: 20,),       
             ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: IconWidget(color: Colors.greenAccent, icon: Icons.web),
              title: Text('Visit Our Website'),                       
             
            ),
       
       
       
          ],
         ),
       ),
    );
  }
}