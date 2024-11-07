import 'package:flutter/material.dart';
import 'package:flutter2/screens/product_list_screen.dart';

class CrudApp extends StatelessWidget
{
  const CrudApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductListScreen(),
    );
  }
}
