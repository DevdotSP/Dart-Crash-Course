import 'package:http/http.dart' as http;
import 'dart:convert';

/// Entry point of the program
void main() async {
  // 🔹 Fetch product data from the API
  var data = await fetchAll(); 

  // 🔹 Decode the raw JSON string into a Dart Map
  var decoded = json.decode(data);

  // 🔹 Extract the 'products' array from the JSON
  var products = decoded['products'];

  // 🔹 Get the first product (index 0)
  var firstProduct = products[0];

  // 🔹 Extract fields from the first product
  var id = firstProduct['id'];
  var title = firstProduct['title'];
  var description = firstProduct['description'];
  var price = firstProduct['price'];
  var discountPercentage = firstProduct['discountPercentage'];
  var rating = firstProduct['rating'];
  var stock = firstProduct['stock'];
  var brand = firstProduct['brand'];
  var category = firstProduct['category'];
  var thumbnail = firstProduct['thumbnail'];
  var images = firstProduct['images'];

  // 🔹 Print some selected fields
  print('--- First Product Info ---');
  print('ID: $id');
  print('Title: $title');
  print('Description: $description');
  print('Price: $price');
  print('Discount: $discountPercentage%');
  print('Rating: $rating');
  print('Stock: $stock');
  print('Brand: $brand');
  print('Category: $category');
  print('Thumbnail: $thumbnail');
  print('Images: $images');
  print('--------------------------\n');

  // 🔹 Print first 30 products summary
  print('--- First 30 Products ---');
  for (var i = 0; i < 30 && i < products.length; i++) {
    print('ID: ${products[i]['id']}');
    print('Title: ${products[i]['title']}');
    print('Description: ${products[i]['description']}');
    print('Price: ${products[i]['price']}');
    print('---------------');
  }
}

/// Fetch all products from the DummyJSON API
Future<String> fetchAll() async {
  final url = 'https://dummyjson.com/products';

  // 🔹 Make HTTP GET request
  var res = await http.get(Uri.parse(url));

  if (res.statusCode == 200) {
    // 🔹 Return the raw JSON response body
    return res.body; 
  } else {
    print('Error fetching products. Status code: ${res.statusCode}');
    return ''; // Return empty string on error
  }
}
