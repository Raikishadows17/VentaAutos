import 'package:flutter/material.dart';
import 'package:storescars/models/products.dart';
import 'package:storescars/widgets/product_item.dart';

class ProductsOverviewScreen extends StatelessWidget {
  ProductsOverviewScreen({super.key});

  static const routeName = 'Products-Overview-Screen';
  final List<Product> loadedProducts = [
    Product(
      id: 'a1',
      title: 'Sentra 2005',
      description: 'Muy bueno',
      km: 1000000,
      price: '98,000',
      imageUrl01:
          'https://scontent.faca1-1.fna.fbcdn.net/v/t39.30808-6/467564672_1385966582369868_4570411796989723553_n.jpg?stp=dst-jpg_s960x960&_nc_cat=101&ccb=1-7&_nc_sid=aa7b47&_nc_eui2=AeHn2Wz-MEo4kxtaDoS9j6WGjH7aZOUlgTWMftpk5SWBNbbgS1jd6XpDachqnCX3Zmi4F-q8jjaFtDZZKFSgG-T1&_nc_ohc=3uTXaJwnZ6gQ7kNvgF17_AQ&_nc_zt=23&_nc_ht=scontent.faca1-1.fna&_nc_gid=AOt-tSYyHn0scMbJCh9K-bD&oh=00_AYA5f_5OZg-1mvSyQAbPTeI5-NzRCOtkZtVXEEFzBo70ng&oe=6742D981',
      imageUrl02:
          'https://scontent.faca1-1.fna.fbcdn.net/v/t39.30808-6/467709394_1385966545703205_5421323235228587114_n.jpg?stp=dst-jpg_s960x960&_nc_cat=108&ccb=1-7&_nc_sid=aa7b47&_nc_eui2=AeGWh11drfyi_Xd8GiFt7-xMESi0CoCq_E8RKLQKgKr8T5Vq3sw-vW9y11SZHs7i1aKOxTHYMKij4d7J7DS-JCqC&_nc_ohc=UmfvnVgS9QoQ7kNvgHZymn8&_nc_zt=23&_nc_ht=scontent.faca1-1.fna&_nc_gid=AOt-tSYyHn0scMbJCh9K-bD&oh=00_AYCFVsHFsHCunhvVKTfaJo5WFrzRkYsWbkpDfUtGvU3-2A&oe=6742CE56',
      imageUrl03:
          'https://scontent.faca1-1.fna.fbcdn.net/v/t39.30808-6/467493858_1385966332369893_6670372690424961738_n.jpg?stp=dst-jpg_s960x960&_nc_cat=104&ccb=1-7&_nc_sid=aa7b47&_nc_eui2=AeH3Uw7UVRuMuNdkHxmj4Kug3bDlJBZv6tfdsOUkFm_q172D5jTn4GQ2owD-YwOUCxXj6nbgRhIoKf0kRziWP_x9&_nc_ohc=HDDibHAYa-AQ7kNvgFXwVB0&_nc_zt=23&_nc_ht=scontent.faca1-1.fna&_nc_gid=AOt-tSYyHn0scMbJCh9K-bD&oh=00_AYAln-NvqmfjBo7dvYtFr16tvKMSneIG_ygPcBH8c3yIww&oe=674301ED',
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
          'https://scontent.faca1-1.fna.fbcdn.net/v/t39.30808-6/453231309_798958889063131_8405500350228204165_n.jpg?stp=dst-jpg_s960x960&_nc_cat=111&ccb=1-7&_nc_sid=946e27&_nc_eui2=AeHJjTmne4hjKdvvhkL-hcIAN4004Q9fdYw3jTThD191jFUMe7ZlHElr6CA_5s0xJ_leZhJKN75EE3v816GHi-6A&_nc_ohc=t6RscvI4JUoQ7kNvgE2HZ4s&_nc_zt=23&_nc_ht=scontent.faca1-1.fna&_nc_gid=ALh6eLYQhmFHaCqDxZfZwca&oh=00_AYC8XxKTmOTimXTqj3gzm3Q0xENyrmPRr63NBViJiKh08g&oe=6743014F',
      imageUrl02:
          'https://scontent.faca1-1.fna.fbcdn.net/v/t39.30808-6/452961363_798958775729809_5674870376136923671_n.jpg?stp=dst-jpg_s960x960&_nc_cat=109&ccb=1-7&_nc_sid=946e27&_nc_eui2=AeHuS9WCGrsefm9E1YM4B89WC5mCtfPMZT8LmYK188xlP9oNGFEkLz5VDFCdySOxRE13QA76imWOw9cNV-CK9uCL&_nc_ohc=M34LKqdStAoQ7kNvgEW68oT&_nc_zt=23&_nc_ht=scontent.faca1-1.fna&_nc_gid=ALh6eLYQhmFHaCqDxZfZwca&oh=00_AYDZbPui0ac4zYW5SbTj_geTI8gaWJZPuArY6S2lBnohLg&oe=6742D738',
      imageUrl03:
          'https://scontent.faca1-1.fna.fbcdn.net/v/t39.30808-6/453374127_798958965729790_6294386586917217380_n.jpg?stp=dst-jpg_s960x960&_nc_cat=105&ccb=1-7&_nc_sid=946e27&_nc_eui2=AeEVhVuBPlhcGOwl3jzrh7KqiegtufU7jhaJ6C259TuOFvWLZ_Cq7W6oiqITYicnETygzDqUo2D85Te-lb78NPDw&_nc_ohc=x0ddg8UNx60Q7kNvgGGWM-2&_nc_zt=23&_nc_ht=scontent.faca1-1.fna&_nc_gid=ALh6eLYQhmFHaCqDxZfZwca&oh=00_AYArVk5j7yNouNJUUU5qa_OWCP4QD0AfX_dJLWDmIjfk8Q&oe=6742E0B2',
      phone: '+52 753 136 5473',
      whatsapp: 527531365473,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products Overview'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: loadedProducts.length,
        itemBuilder: (ctx, i) => ProductItem(
            loadedProducts[i].id,
            loadedProducts[i].title,
            loadedProducts[i].imageUrl01,
            loadedProducts[i].price),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 16 / 9,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
      ),
    );
  }
}
