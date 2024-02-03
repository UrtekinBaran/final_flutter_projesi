import 'package:flutter/material.dart';
import 'package:final_projesi/Screens/communication.dart';
import 'package:final_projesi/Screens/LoginScreen.dart';
import 'package:final_projesi/Screens/HomePage.dart';



class UserProfileScreen extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('LezzetSarayı.com'),
            accountEmail: Text('ogrenci@gmail.com'),
            currentAccountPicture: CircleAvatar(
                  radius: 60.0,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/resim1.jpg',
                      fit: BoxFit.cover,
                      width: 120,
                      height: 120,
                    ),
                  ),
                ),

            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')),
            ),
          ),
         
          ListTile(
            leading: Icon(Icons.menu_book),
            title: Text('Menu'),
            onTap: ()  {
                Navigator.pop(context); // Drawer'ı kapat
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
          ),
           ListTile(
            leading: Icon(Icons.person),
            title: Text('İletişim'),
            onTap: () {
                Navigator.pop(context); // Drawer'ı kapat
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IletisimScreen()),
                );
              },
          ),
          Divider(),
          ListTile(
            title: Text('Login Ekranı'),
            leading: Icon(Icons.login),
            onTap: () {
                Navigator.pop(context); // Drawer'ı kapat
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
          ),
        ],
      ),
    );
  }
}

