import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:storescars/providers/product.dart';
import 'package:storescars/providers/products.dart';

class NewProductsScreen extends StatefulWidget {
  const NewProductsScreen({super.key});
  static const routeName = 'new-products-screen';

  @override
  State<NewProductsScreen> createState() => _NewProductsScreenState();
}

class _NewProductsScreenState extends State<NewProductsScreen> {
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
  final _form = GlobalKey<FormState>();

  var _editedProduct = Product(
    id: null,
    title: '',
    price: '',
    description: '',
    km: 0,
    phone: '',
    whatsapp: 0,
    imageUrl01: '',
    imageUrl02: '',
    imageUrl03: '',
    isFavorite: false,
  );
  var _initValues = {
    'title': '',
    'price': '',
    'description': '',
    'km': '',
    'phone': '',
    'whatsapp': '',
    'imageUrl01': '',
    'imageUrl02': '',
    'imageUrl03': ''
  };

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

  void _safeForm() {
    _form.currentState?.save();
    Provider.of<Products>(context, listen: false).addProduct(_editedProduct);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Product'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: _safeForm,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: _form,
          child: ListView(
            children: [
              TextFormField(
                //initialValue: _initValues['title'],
                decoration: const InputDecoration(
                    labelText: 'Title',
                    labelStyle: TextStyle(color: Colors.black)),
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(_priceFocusNode);
                },
                onSaved: (value) {
                  _editedProduct = Product(
                      id: _editedProduct.id,
                      title: value ?? '',
                      price: _editedProduct.price,
                      description: _editedProduct.description,
                      km: _editedProduct.km,
                      phone: _editedProduct.phone,
                      whatsapp: _editedProduct.whatsapp,
                      imageUrl01: _editedProduct.imageUrl01,
                      imageUrl02: _editedProduct.imageUrl02,
                      imageUrl03: _editedProduct.imageUrl03,
                      isFavorite: _editedProduct.isFavorite);
                },
                style: const TextStyle(color: Colors.black),
              ),
              TextFormField(
                //initialValue: _initValues['price'],
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
                onSaved: (value) {
                  _editedProduct = Product(
                      id: _editedProduct.id,
                      title: _editedProduct.title,
                      price: value ?? '',
                      description: _editedProduct.description,
                      km: _editedProduct.km,
                      phone: _editedProduct.phone,
                      whatsapp: _editedProduct.whatsapp,
                      imageUrl01: _editedProduct.imageUrl01,
                      imageUrl02: _editedProduct.imageUrl02,
                      imageUrl03: _editedProduct.imageUrl03,
                      isFavorite: _editedProduct.isFavorite);
                },
              ),
              TextFormField(
                //initialValue: _initValues['description'],
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
                onSaved: (value) {
                  _editedProduct = Product(
                      id: _editedProduct.id,
                      title: _editedProduct.title,
                      price: _editedProduct.price,
                      description: value ?? '',
                      km: _editedProduct.km,
                      phone: _editedProduct.phone,
                      whatsapp: _editedProduct.whatsapp,
                      imageUrl01: _editedProduct.imageUrl01,
                      imageUrl02: _editedProduct.imageUrl02,
                      imageUrl03: _editedProduct.imageUrl03,
                      isFavorite: _editedProduct.isFavorite);
                },
              ),
              TextFormField(
                //initialValue: _initValues['km'],
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
                onSaved: (value) {
                  _editedProduct = Product(
                      id: _editedProduct.id,
                      title: _editedProduct.title,
                      price: _editedProduct.price,
                      description: _editedProduct.description,
                      km: int.parse(value!),
                      phone: _editedProduct.phone,
                      whatsapp: _editedProduct.whatsapp,
                      imageUrl01: _editedProduct.imageUrl01,
                      imageUrl02: _editedProduct.imageUrl02,
                      imageUrl03: _editedProduct.imageUrl03,
                      isFavorite: _editedProduct.isFavorite);
                },
              ),
              TextFormField(
                //initialValue: _initValues['phone'],
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
                onSaved: (value) {
                  _editedProduct = Product(
                      id: _editedProduct.id,
                      title: _editedProduct.title,
                      price: _editedProduct.price,
                      description: _editedProduct.description,
                      km: _editedProduct.km,
                      phone: value ?? '',
                      whatsapp: _editedProduct.whatsapp,
                      imageUrl01: _editedProduct.imageUrl01,
                      imageUrl02: _editedProduct.imageUrl02,
                      imageUrl03: _editedProduct.imageUrl03,
                      isFavorite: _editedProduct.isFavorite);
                },
              ),
              TextFormField(
                //initialValue: _initValues['whatsapp'],
                decoration: InputDecoration(
                    labelText: 'Whatsapp',
                    labelStyle: TextStyle(color: Colors.black)),
                textInputAction: TextInputAction.next,
                style: TextStyle(color: Colors.black),
                keyboardType: TextInputType.number,
                focusNode: _whatsappFocusNode,
                onSaved: (value) {
                  _editedProduct = Product(
                      id: _editedProduct.id,
                      title: _editedProduct.title,
                      price: _editedProduct.price,
                      description: _editedProduct.description,
                      km: _editedProduct.km,
                      phone: _editedProduct.phone,
                      whatsapp: int.parse(value!),
                      imageUrl01: _editedProduct.imageUrl01,
                      imageUrl02: _editedProduct.imageUrl02,
                      imageUrl03: _editedProduct.imageUrl03,
                      isFavorite: _editedProduct.isFavorite);
                },
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
                      onSaved: (value) {
                        _editedProduct = Product(
                            id: _editedProduct.id,
                            title: _editedProduct.title,
                            price: _editedProduct.price,
                            description: _editedProduct.description,
                            km: _editedProduct.km,
                            phone: _editedProduct.phone,
                            whatsapp: _editedProduct.whatsapp,
                            imageUrl01: value ?? '',
                            imageUrl02: _editedProduct.imageUrl02,
                            imageUrl03: _editedProduct.imageUrl03,
                            isFavorite: _editedProduct.isFavorite);
                      },
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
                      onSaved: (value) {
                        _editedProduct = Product(
                            id: _editedProduct.id,
                            title: _editedProduct.title,
                            price: _editedProduct.price,
                            description: _editedProduct.description,
                            km: _editedProduct.km,
                            phone: _editedProduct.phone,
                            whatsapp: _editedProduct.whatsapp,
                            imageUrl01: _editedProduct.imageUrl01,
                            imageUrl02: value ?? '',
                            imageUrl03: _editedProduct.imageUrl03,
                            isFavorite: _editedProduct.isFavorite);
                      },
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
                      onFieldSubmitted: (_) {
                        _safeForm();
                      },
                      onSaved: (value) {
                        _editedProduct = Product(
                            id: _editedProduct.id,
                            title: _editedProduct.title,
                            price: _editedProduct.price,
                            description: _editedProduct.description,
                            km: _editedProduct.km,
                            phone: _editedProduct.phone,
                            whatsapp: _editedProduct.whatsapp,
                            imageUrl01: _editedProduct.imageUrl01,
                            imageUrl02: _editedProduct.imageUrl02,
                            imageUrl03: value ?? '',
                            isFavorite: _editedProduct.isFavorite);
                      },
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
