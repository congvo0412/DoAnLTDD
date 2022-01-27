class Product{
  final String image;
  final String name;
  final double price;
  final String size;
  final String desc;
  Product({
    required this.image,
    required this.name,
    required this.price,
    required this.size,
    required this.desc,
  });
}

final List<Product> products =[
  Product(
      image: 'prd1.jpg',
      name: 'Áo thun M1',
      price: 200.000,
      size: 'L',
      desc:
          'Áo Thun Cổ Tròn Đơn Giản M1\nChất liệu: Cotton 4 chiều\nThành phần: 92% cotton 8%',
    ),
  Product(
      image: 'prd2.jpg',
      name: 'Áo Sweater LV',
      price: 700.000,
      size: 'L',
      desc:
          'Áo Sweater LV chính hãng\nChất liệu: Cotton 4 chiều\nThành phần: 92% cotton 8%',
    ),
    Product(
      image: 'prd3.jpg',
      name: 'Áo thun M3',
      price: 150.000,
      size: 'L',
      desc:
          'Áo Thun Cổ Tròn Đơn Giản M3\nChất liệu: Cotton 4 chiều\nThành phần: 92% cotton 8%',
    ),
    Product(
      image: 'prd4.jpg',
      name: 'Áo thun M4',
      price: 170.000,
      size: 'L',
      desc:
          'Áo Thun Cổ Tròn Đơn Giản M4\nChất liệu: Cotton 4 chiều\nThành phần: 92% cotton 8%',
    ),
    Product(
      image: 'prd5.jpg',
      name: 'Áo khoác Bomber',
      price: 350.000,
      size: 'L',
      desc:
          'Áo Khoác Bomber cool ngầu\nChất liệu: Cotton 4 chiều\nThành phần: 92% cotton 8%',
    ),
    Product(
      image: 'prd6.jpg',
      name: 'Áo khoác Blazer',
      price: 450.000,
      size: 'L',
      desc:
          'Áo Khoác Blazer hàn quốc\nChất liệu: Cotton 4 chiều\nThành phần: 92% cotton 8%',
    ),
    Product(
      image: 'prd7.jpg',
      name: 'Áo thun M7',
      price: 300.000,
      size: 'L',
      desc:
          'Áo Thun Cổ Tròn Đơn Giản M7\nChất liệu: Cotton 4 chiều\nThành phần: 92% cotton 8%',
    ),
    Product(
      image: 'prd8.jpg',
      name: 'Áo Hoodie M8',
      price: 250.000,
      size: 'L',
      desc:
          'Áo Thun Cổ Tròn Đơn Giản M8\nChất liệu: Cotton 4 chiều\nThành phần: 92% cotton 8%',
    ),
];