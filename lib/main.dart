import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu App'),
      ),
      body: Center(
        child: Text('Conteúdo Principal'), // Conteúdo central
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Perfil',
                  style: TextStyle(fontSize: 0)), // Ocultar texto
              onTap: () {
// Navegar para a página de perfil
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_basket),
              title: Text('Produtos',
                  style: TextStyle(fontSize: 0)), // Ocultar texto
              onTap: () {
// Navegar para a página de produtos
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('Carrinho',
                  style: TextStyle(fontSize: 0)), // Ocultar texto
              onTap: () {
// Navegar para a página do carrinho
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title:
                  Text('Ajuda', style: TextStyle(fontSize: 0)), // Ocultar texto
              onTap: () {
// Navegar para a página de ajuda
              },
            ),
          ],
        ),
      ),
    );
  }
}
