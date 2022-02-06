  import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../screens/checkout.dart';
import 'package:readmore/readmore.dart';

class DetailPage extends StatelessWidget{
  final Product product;
  DetailPage({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:<Widget> [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                  ),
                  Icon(
                    Icons.add_shopping_cart,
                    size: 30,
                    color: Colors.deepOrange,
                  )
                ],
              ),
            ),
            _productImage(),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: Container(
                  padding: EdgeInsets.only(left: 18, top: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.grey.shade200,
                  ),
                  child: _productDetail(context)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _productImage() {
    return Stack(
      children:<Widget> [
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 50,
              width: 300,
              decoration: new BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.all(Radius.elliptical(300, 50)),
              ),
            ),
          ),
        ),
        Center(
          child: Image.asset(
            'assets/images/${product.image}',
            height: 350,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }

  Widget _productDetail(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.yellow.shade600,
              size:20,
            ),
             Icon(
              Icons.star,
              color: Colors.yellow.shade600,
              size:20,
            ),
             Icon(
              Icons.star,
              color: Colors.yellow.shade600,
              size:20,
            ),Icon(
              Icons.star,
              color: Colors.yellow.shade600,
              size:20,
            ),
             Icon(
              Icons.star,
              color: Colors.yellow.shade600,
              size:20,
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${product.name}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  color: Colors.lightBlue),
              child: Text(
                '${product.price}00 VNĐ',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            )
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Size',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  color: Colors.lightBlue),
              child: Text(
                '${product.size}',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 14),
          child: ReadMoreText(
              'MÔ TẢ SẢN PHẨM: ${product.desc}',
              trimLines: 1,
              style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),
              colorClickableText: Colors.deepOrange,
              trimMode: TrimMode.Line,
              trimCollapsedText: 'Xem thêm',
              trimExpandedText: 'Thu gọn',
              moreStyle: TextStyle(fontSize: 14,color: Colors.deepOrange),
            ),
        ),
        SizedBox(
          height: 14,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                },
                child: Icon(Icons.remove),
                style: ElevatedButton.styleFrom(primary: Colors.grey,
                                                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5)
                                                ),
              ),
              SizedBox(
                width: 14,
              ),
              Text(
                '1',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              SizedBox(
                width: 14,
              ),
              ElevatedButton(
                onPressed: () {
                 
                },
                child: Icon(Icons.add),
                style: ElevatedButton.styleFrom(primary: Colors.grey,
                                                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5)
                                               ),
              ),
            ],
          ),
          Container(
            padding:EdgeInsets.all(4),
            decoration: const BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.all( Radius.circular(5))
                    ),
            child: IconButton(
              icon:Icon(Icons.add_shopping_cart,color:Colors.white),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.deepOrange,),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 17, horizontal: 20),
                child: Text(
                  'Đặt hàng',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              onPressed: ()  {
                       Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>const  CheckoutPage(),
                        settings: RouteSettings(
                          arguments: product,
                        )));
              },
            ),
          ),
        ]),
        SizedBox(
          height: 48,
        ),
      ],
    );
  }
}
