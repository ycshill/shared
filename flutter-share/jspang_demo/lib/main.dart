import 'package:flutter/material.dart';
// 创建一个商品类
class Product {
  final String title; // 商品标题
  final String description; // 商品描述
  Product(this.title, this.description);
}

// 定义一个ProductList 列表
class ProductList extends StatelessWidget {
  final List<Product> products;
  ProductList({Key key, @required this.products}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品列表'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].title),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => new ProductDetail(product: products[index]),
                )
              );
            },
          );
        },
      ),
    );
  }
}

class ProductDetail extends StatelessWidget {

  final Product product;
  ProductDetail({Key key, @required this.product}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('商品详情页'),),
      body: Center(
        child: Text('${product.description}'),
      ),
    );
  }
}

void main(){
  runApp(
    MaterialApp(
      title: '数据传递案例',
      home: ProductList(
        products: List.generate(
          20,
          (i) => Product('商品$i', '这是一个商品详情，编号为: $i'),
        ),
      )
    )
  );
}
