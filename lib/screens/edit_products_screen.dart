import 'package:flutter/material.dart';

class EditProductsScreen extends StatefulWidget {
  const EditProductsScreen({super.key});

  static const routeName = 'edit-products-screen';

  @override
  State<EditProductsScreen> createState() => _EditProductsScreenState();
}

class _EditProductsScreenState extends State<EditProductsScreen> {
  final _priceFocusNode = FocusNode();
  final _descriptionFocusNode = FocusNode();
  final _kmFocusNode = FocusNode();
  final _phoneFocusNode = FocusNode();
  final _whatsappFocusNode = FocusNode();
  final _imageUrl01Controller = TextEditingController();
  final _imageUrl02Controller = TextEditingController();
  final _imageUrl03Controller = TextEditingController();
  final _imageUrl01FocusNode = FocusNode();
  final _imageUrl02FocusNode = FocusNode();
  final _imageUrl03FocusNode = FocusNode();

  @override
  void initState() {
    _imageUrl01FocusNode.addListener(_updateImageUrl01);
    _imageUrl02FocusNode.addListener(_updateImageUrl02);
    _imageUrl03FocusNode.addListener(_updateImageUrl03);
    super.initState();
  }

  @override
  void dispose() {
    _priceFocusNode.dispose();
    _descriptionFocusNode.dispose();
    _kmFocusNode.dispose();
    _phoneFocusNode.dispose();
    _whatsappFocusNode.dispose();
    _imageUrl01Controller.dispose();
    _imageUrl02Controller.dispose();
    _imageUrl03Controller.dispose();
    _imageUrl01FocusNode.dispose();
    _imageUrl02FocusNode.dispose();
    _imageUrl03FocusNode.dispose();
    _imageUrl01FocusNode.removeListener(_updateImageUrl01);
    _imageUrl02FocusNode.removeListener(_updateImageUrl02);
    _imageUrl03FocusNode.removeListener(_updateImageUrl03);
    super.dispose();
  }

  void _updateImageUrl01() {
    if (!_imageUrl01FocusNode.hasFocus) {
      setState(() {});
    }
  }

  void _updateImageUrl02() {
    if (!_imageUrl02FocusNode.hasFocus) {
      setState(() {});
    }
  }

  void _updateImageUrl03() {
    if (!_imageUrl03FocusNode.hasFocus) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Product'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          child: ListView(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Title',
                    labelStyle: TextStyle(color: Colors.black)),
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(_priceFocusNode);
                },
                style: const TextStyle(color: Colors.black),
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Price',
                    labelStyle: TextStyle(color: Colors.black)),
                textInputAction: TextInputAction.next,
                style: const TextStyle(color: Colors.black),
                keyboardType: TextInputType.number,
                focusNode: _priceFocusNode,
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(_descriptionFocusNode);
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Description',
                    labelStyle: TextStyle(color: Colors.black)),
                maxLines: 3,
                style: TextStyle(color: Colors.black),
                keyboardType: TextInputType.multiline,
                focusNode: _descriptionFocusNode,
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(_kmFocusNode);
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Km',
                    labelStyle: TextStyle(color: Colors.black)),
                textInputAction: TextInputAction.next,
                style: TextStyle(color: Colors.black),
                keyboardType: TextInputType.number,
                focusNode: _kmFocusNode,
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(_phoneFocusNode);
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Phone',
                    labelStyle: TextStyle(color: Colors.black)),
                textInputAction: TextInputAction.next,
                style: TextStyle(color: Colors.black),
                keyboardType: TextInputType.number,
                focusNode: _phoneFocusNode,
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(_whatsappFocusNode);
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Whatsapp',
                    labelStyle: TextStyle(color: Colors.black)),
                textInputAction: TextInputAction.next,
                style: TextStyle(color: Colors.black),
                keyboardType: TextInputType.number,
                focusNode: _whatsappFocusNode,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(top: 8, right: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.deepOrange,
                      ),
                    ),
                    child: _imageUrl01Controller.text.isEmpty
                        ? Text("Ingrese un URL")
                        : FittedBox(
                            child: Image.network(
                              _imageUrl01Controller.text,
                              fit: BoxFit.cover,
                            ),
                          ),
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(labelText: "Image01 URL"),
                      keyboardType: TextInputType.url,
                      textInputAction: TextInputAction.done,
                      controller: _imageUrl01Controller,
                      focusNode: _imageUrl01FocusNode,
                    ),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(top: 8, right: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.deepOrange,
                      ),
                    ),
                    child: _imageUrl02Controller.text.isEmpty
                        ? Text("Ingrese un URL")
                        : FittedBox(
                            child: Image.network(
                              _imageUrl02Controller.text,
                              fit: BoxFit.cover,
                            ),
                          ),
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(labelText: "Image02 URL"),
                      keyboardType: TextInputType.url,
                      textInputAction: TextInputAction.done,
                      controller: _imageUrl02Controller,
                      focusNode: _imageUrl02FocusNode,
                    ),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(top: 8, right: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.deepOrange,
                      ),
                    ),
                    child: _imageUrl03Controller.text.isEmpty
                        ? Text("Ingrese un URL")
                        : FittedBox(
                            child: Image.network(
                              _imageUrl03Controller.text,
                              fit: BoxFit.cover,
                            ),
                          ),
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(labelText: "Image03 URL"),
                      keyboardType: TextInputType.url,
                      textInputAction: TextInputAction.done,
                      controller: _imageUrl03Controller,
                      focusNode: _imageUrl03FocusNode,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
