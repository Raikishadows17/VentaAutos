import 'package:flutter/material.dart';
import 'package:storescars/providers/product.dart';

class Products with ChangeNotifier {
  final List<Product> _items = [
    Product(
      id: 'a1',
      title: 'Sentra 2005',
      description: 'Muy bueno',
      km: 1000000,
      price: '98,000',
      imageUrl01:
          'https://scontent.faca1-1.fna.fbcdn.net/v/t39.30808-6/468277309_1389620278671165_6685415617571459030_n.jpg?stp=dst-jpg_s960x960&_nc_cat=105&ccb=1-7&_nc_sid=aa7b47&_nc_eui2=AeGvFDWHvy8SLgJey6WjEFkahqZQkl_7abWGplCSX_tptYzh9D8LnsvSSeIsDoy4MSDu2mUzww-iQaThpgD-6vXj&_nc_ohc=lond_VsySucQ7kNvgHJbgOf&_nc_zt=23&_nc_ht=scontent.faca1-1.fna&_nc_gid=AT_dKU6oKVZWyZGswqw8NNI&oh=00_AYAKE-orUw1PoAC7AulY886LMdW2Jm7pgVY8DsUm7H8CrQ&oe=6749B1C6',
      imageUrl02:
          'https://scontent.faca1-1.fna.fbcdn.net/v/t39.30808-6/468301865_1389620165337843_8936332533450934670_n.jpg?stp=dst-jpg_s960x960_tt6&_nc_cat=107&ccb=1-7&_nc_sid=aa7b47&_nc_eui2=AeGYEyxJFot7m0Io2GcpuPR3j2NBQSkV2gOPY0FBKRXaA7RO3TRTakpbZyjhOUvz8hXNvNYIJO3MNAXeDmv_X5Wp&_nc_ohc=l03UMHXgF7sQ7kNvgFxoFsQ&_nc_zt=23&_nc_ht=scontent.faca1-1.fna&_nc_gid=AT_dKU6oKVZWyZGswqw8NNI&oh=00_AYDXSlTo7ugOQtNhxSpzATOBXGCtvurPnlnoIQtWddLN6A&oe=6749AC15',
      imageUrl03:
          'https://scontent.faca1-1.fna.fbcdn.net/v/t39.30808-6/468196506_1389620298671163_9140982834535871212_n.jpg?stp=dst-jpg_s960x960&_nc_cat=107&ccb=1-7&_nc_sid=aa7b47&_nc_eui2=AeElBNL8S2yJ7fzIyojXJA6oghyhWZLivSqCHKFZkuK9KmdCyBzyM_v9JDN_B1McWouia8tvrgKbU-V4IQEv-o0r&_nc_ohc=YHo0JcucS8oQ7kNvgH9olDV&_nc_zt=23&_nc_ht=scontent.faca1-1.fna&_nc_gid=AT_dKU6oKVZWyZGswqw8NNI&oh=00_AYDHfMD4Cd-xg0_jSWqcX0cJnubrvkcE4DlYek149nHMqw&oe=6749BB8E',
      phone: '+52 753 136 5473',
      whatsapp: 527531365473,
    ),
    Product(
      id: 'a2',
      title: 'Altima 2011',
      description: 'Coool',
      km: 50000,
      price: '120,000',
      imageUrl01:
          'https://scontent.faca1-1.fna.fbcdn.net/v/t39.30808-6/468326625_1623806211824326_4782118871521193800_n.jpg?stp=dst-jpg_s960x960&_nc_cat=108&ccb=1-7&_nc_sid=aa7b47&_nc_eui2=AeG7J9rXZEAMHVrIboEbks3ygNZyAxHiph6A1nIDEeKmHnttxzO5_lSozAljAjlAWU7HpVpsdgZzBBdafgngGdw3&_nc_ohc=RJEEDBw4ep4Q7kNvgE_wI37&_nc_zt=23&_nc_ht=scontent.faca1-1.fna&_nc_gid=AWrpib_oCMHFz9zgL1puOFF&oh=00_AYAhe4lmS-6zCPxbyImi0K3u5nQ7Lx45msf5EUbY5S4iiQ&oe=6749D0EF',
      imageUrl02:
          'https://scontent.faca1-1.fna.fbcdn.net/v/t39.30808-6/468328551_1623806278490986_3426066553861124378_n.jpg?stp=dst-jpg_s960x960&_nc_cat=105&ccb=1-7&_nc_sid=aa7b47&_nc_eui2=AeH0TtI3g1bWj1kFchMOK-dNEmvyDhEGevkSa_IOEQZ6-aB2uIYhB_XWVzYMZQu5X0Nalx7xXPUdZlFau1inJsVs&_nc_ohc=Vz8fgKpSyCIQ7kNvgEwPyvN&_nc_zt=23&_nc_ht=scontent.faca1-1.fna&_nc_gid=AWrpib_oCMHFz9zgL1puOFF&oh=00_AYCEydD6k8cjY5RgKRnPMgJIB1aqNxTfrmrn6uJBH8GAmQ&oe=6749D392',
      imageUrl03:
          'https://scontent.faca1-1.fna.fbcdn.net/v/t39.30808-6/468288175_1623806271824320_2940533687766889519_n.jpg?stp=dst-jpg_s960x960_tt6&_nc_cat=109&ccb=1-7&_nc_sid=aa7b47&_nc_eui2=AeGp3pgkwhxrh7ZthG7rTU89hiwWxB9xCUaGLBbEH3EJRl1PVnRQ4tSCgqqjwypIlgBS-1GcyeeC0F1sWux3MNZH&_nc_ohc=O7Q1_ve3mG4Q7kNvgFKRDOu&_nc_zt=23&_nc_ht=scontent.faca1-1.fna&_nc_gid=AWrpib_oCMHFz9zgL1puOFF&oh=00_AYBGa8wW7tDn8tBDvK42d3bxVrGge_2IgipROx_4ayW_Pw&oe=6749C4AC',
      phone: '+52 753 136 5473',
      whatsapp: 527531365473,
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }
}
