

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyEcommerceApp());
// }

// class MyEcommerceApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: EcommerceHomePage(),
//     );
//   }
// }

// class EcommerceHomePage extends StatelessWidget {
//   final List<String> productNames = [
//     'Smartphone', 
//     'Gaming Console', 
//     'Laptop', 
//     'Camera',
//   ];

//   final List<String> flashSaleImages = [
//     'https://images.unsplash.com/photo-1529653762956-b0a27278529c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8bW9iaWxlfGVufDB8fDB8fHww?text=phones',
//     'https://images.unsplash.com/photo-1580234797602-22c37b2a6230?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGdhbWUlMjBjb25zb2xlfGVufDB8fDB8fHww?text=Consoles',
//   ];

//   final List<String> flashSaleDescriptions = [
//     'Latest Smartphone with advanced features.',
//     'Next-gen gaming console for immersive gaming.',
//   ];

//   final List<String> flashSalePrices = [
//     '\$699',
//     '\$499',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Time Indicator
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text('9:41', style: TextStyle(color: Colors.black)),
//                 // Battery, WiFi, and Signal Icons
//                 Row(
//                   children: [
//                     Icon(Icons.battery_full, color: Colors.black, size: 16),
//                     SizedBox(width: 4),
//                     Icon(Icons.signal_cellular_4_bar, color: Colors.black, size: 16),
//                     SizedBox(width: 4),
//                     Icon(Icons.wifi, color: Colors.black, size: 16),
//                   ],
//                 ),
//               ],
//             ),
//             // Notification Bell and Settings Icon
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Container(
//                   padding: EdgeInsets.all(8),
//                   decoration: BoxDecoration(
//                     color: Colors.yellow,
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   child: Icon(Icons.settings, color: Colors.black),
//                 ),
//                 Container(
//                   padding: EdgeInsets.all(8),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(8),
//                     border: Border.all(color: Colors.black),
//                   ),
//                   child: Icon(Icons.notifications, color: Colors.black),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               // Delivery Address Section
//               Text(
//                 'Delivery Address',
//                 style: TextStyle(fontSize: 14, color: Colors.black),
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(height: 4.0),
//               Text(
//                 '92 High Street, London',
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(height: 16.0),
//               // Search Bar
//               Container(
//                 margin: const EdgeInsets.only(bottom: 16.0),
//                 child: TextField(
//                   decoration: InputDecoration(
//                     hintText: 'Search...',
//                     filled: true,
//                     fillColor: Colors.grey[200],
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10.0),
//                       borderSide: BorderSide.none,
//                     ),
//                     prefixIcon: Icon(Icons.search),
//                   ),
//                 ),
//               ),
//               // Delivery Information
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Delivery is ',
//                     style: TextStyle(fontSize: 16, color: Colors.black),
//                   ),
//                   Text(
//                     '50% ',
//                     style: TextStyle(fontSize: 16, color: Colors.white, backgroundColor: Colors.blue),
//                   ),
//                   Text(
//                     'cheaper',
//                     style: TextStyle(fontSize: 16, color: Colors.black),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 16.0),
//               // Categories Title
//               Text(
//                 'Categories',
//                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 20.0),
//               // Categories with images
//               GridView.builder(
//                 physics: NeverScrollableScrollPhysics(),
//                 shrinkWrap: true,
//                 itemCount: productNames.length,
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 4,
//                   childAspectRatio: 1,
//                   crossAxisSpacing: 10.0,
//                   mainAxisSpacing: 10.0,
//                 ),
//                 itemBuilder: (BuildContext context, int index) {
//                   return ProductCard(
//                     imageUrl: flashSaleImages[index % flashSaleImages.length], 
//                     productName: productNames[index],
//                   );
//                 },
//               ),
//               SizedBox(height: 20.0),
//               // Flash Sale Section
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     'Flash Sale',
//                     style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   ),
//                   Row(
//                     children: [
//                       Text(
//                         '02:59:23',
//                         style: TextStyle(fontSize: 20, color: Colors.yellow),
//                       ),
//                       SizedBox(width: 8),
//                       Text(
//                         'See All',
//                         style: TextStyle(fontSize: 16, color: Colors.black),
//                       ),
//                       Icon(Icons.arrow_forward, color: Colors.black),
//                     ],
//                   ),
//                 ],
//               ),
//               SizedBox(height: 16.0),
//               // Flash Sale Images
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   // Left Image
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Image.network(
//                         flashSaleImages[0],
//                         width: 150,
//                         height: 150,
//                         fit: BoxFit.cover,
//                       ),
//                       SizedBox(height: 8.0),
//                       Text(
//                         flashSaleDescriptions[0],
//                         style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
//                       ),
//                       SizedBox(height: 4.0),
//                       Text(flashSalePrices[0]),
//                     ],
//                   ),
//                   // Right Image
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Image.network(
//                         flashSaleImages[1],
//                         width: 150,
//                         height: 150,
//                         fit: BoxFit.cover,
//                       ),
//                       SizedBox(height: 8.0),
//                       Text(
//                         flashSaleDescriptions[1],
//                         style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
//                       ),
//                       SizedBox(height: 4.0),
//                       Text(flashSalePrices[1]),
//                     ],
//                   ),
//                 ],
//               ),
//               SizedBox(height: 20.0),
//               // Bottom Navigation Bar
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Column(
//                     children: [
//                       Icon(Icons.home),
//                       Text('Home'),
//                     ],
//                   ),
//                   Column(
//                     children: [
//                       Icon(Icons.list),
//                       Text('Catalog'),
//                     ],
//                   ),
//                   Column(
//                     children: [
//                       Icon(Icons.shopping_cart),
//                       Text('Cart'),
//                     ],
//                   ),
//                   Column(
//                     children: [
//                       Icon(Icons.favorite),
//                       Text('Favorites'),
//                     ],
//                   ),
//                   Column(
//                     children: [
//                       Icon(Icons.person),
//                       Text('Profile'),
//                     ],
//                   ),
//                 ],
//               ),
//               SizedBox(height: 20.0),
//               Divider(color: Colors.black), // Black line divider
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ProductCard extends StatelessWidget {
//   final String imageUrl;
//   final String productName;

//   const ProductCard({
//     required this.imageUrl,
//     required this.productName,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
//       child: Column(
//         children: [
//           ClipOval(
//             child: Image.network(
//               imageUrl,
//               fit: BoxFit.cover,
//               height: 80,
//               width: 80,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(
//               productName,
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 16.0,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(MyEcommerceApp());
}

class MyEcommerceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EcommerceHomePage(),
    );
  }
}

class EcommerceHomePage extends StatelessWidget {
  final List<String> productNames = [
    'Smartphone',
    'Gaming Console',
    'Laptop',
    'Camera',
  ];

  final List<String> flashSaleImages = [
    'https://images.unsplash.com/photo-1529653762956-b0a27278529c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8bW9iaWxlfGVufDB8fDB8fHww?text=phones',
    'https://images.unsplash.com/photo-1580234797602-22c37b2a6230?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGdhbWUlMjBjb25zb2xlfGVufDB8fDB8fHww?text=Consoles',
  ];

  final List<String> flashSaleDescriptions = [
    'Latest Smartphone with advanced features.',
    'Next-gen gaming console for immersive gaming.',
  ];

  final List<String> flashSalePrices = [
    '\$699',
    '\$499',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('9:41', style: TextStyle(color: Colors.black)),
                Row(
                  children: [
                    Icon(Icons.battery_full, color: Colors.black, size: 16),
                    SizedBox(width: 4),
                    Icon(Icons.signal_cellular_4_bar, color: Colors.black, size: 16),
                    SizedBox(width: 4),
                    Icon(Icons.wifi, color: Colors.black, size: 16),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(Icons.settings, color: Colors.black),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Icon(Icons.notifications, color: Colors.black),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Delivery Address',
                style: TextStyle(fontSize: 14, color: Colors.black),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 4.0),
              Text(
                '92 High Street, London',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16.0),
              Container(
                margin: const EdgeInsets.only(bottom: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Delivery is ',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  Text(
                    '50% ',
                    style: TextStyle(fontSize: 16, color: Colors.white, backgroundColor: Colors.blue),
                  ),
                  Text(
                    'cheaper',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Text(
                'Categories',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20.0),
              // Horizontal scrollable categories
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(productNames.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: ProductCard(
                        imageUrl: flashSaleImages[index % flashSaleImages.length],
                        productName: productNames[index],
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Flash Sale',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text(
                        '02:59:23',
                        style: TextStyle(fontSize: 20, color: Colors.yellow),
                      ),
                      SizedBox(width: 8),
                      Text(
                        'See All',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      Icon(Icons.arrow_forward, color: Colors.black),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              // Horizontal scrollable flash sale items
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FlashSaleCard(
                      imageUrl: flashSaleImages[0],
                      description: flashSaleDescriptions[0],
                      price: flashSalePrices[0],
                    ),
                    FlashSaleCard(
                      imageUrl: flashSaleImages[1],
                      description: flashSaleDescriptions[1],
                      price: flashSalePrices[1],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(Icons.home),
                      Text('Home'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.list),
                      Text('Catalog'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.shopping_cart),
                      Text('Cart'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.favorite),
                      Text('Favorites'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.person),
                      Text('Profile'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Divider(color: Colors.black), // Black line divider
            ],
          ),
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String productName;

  const ProductCard({
    required this.imageUrl,
    required this.productName,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: [
          ClipOval(
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              height: 80,
              width: 80,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              productName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

class FlashSaleCard extends StatelessWidget {
  final String imageUrl;
  final String description;
  final String price;

  const FlashSaleCard({
    required this.imageUrl,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imageUrl,
            width: 150,
            height: 150,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 8.0),
          Text(
            description,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4.0),
          Text(
            price,
            style: TextStyle(fontSize: 16, color: Colors.red),
          ),
        ],
      ),
    );
  }
}


