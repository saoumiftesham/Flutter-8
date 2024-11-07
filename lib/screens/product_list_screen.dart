import 'package:flutter/material.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white70,
        toolbarHeight:70,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView.separated(
          itemCount: 20,
            itemBuilder: (context,index)
            {
              return const ProductItem();
            },

            separatorBuilder:(context,index)
          {
            return SizedBox(height: 4);
          },
        ),
      )
    );
  }
}

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.greenAccent,
      title: Text('Product Name'),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Product Code: CODE'),
          Text('Price: \$120'),
          Text('Quantity: 2'),
          Text('Total Price: \$240'),
          Divider(),
          ButtonBar(
            children: [
              TextButton.icon(
                  onPressed: (){},
                  icon:Icon(Icons.edit,color: Colors.black,),
                  label:const Text('Edit',style: TextStyle(color: Colors.black),)
              ),
              TextButton.icon(
                  onPressed: (){},
                  icon:Icon(Icons.delete_outline,color: Colors.red,),
                  label:const Text('Delete',style: TextStyle(color:Colors.red),)
              ),
            ],
          )
        ],
      ),
    );
  }
}
