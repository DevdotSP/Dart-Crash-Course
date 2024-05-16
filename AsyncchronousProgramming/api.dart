import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  var data = await fetchAll(); // Await the result of fetchAll()
  var products =
      json.decode(data)['products']; // Extracting the 'products' array
  var firstProduct = products[0]; // Accessing the first product

  // Accessing various fields of the first product
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

  // Printing some of the fields for demonstration
  print('Title: $id');
  print('Title: $title');
  print('Description: $description');
  print('Price: $price');

  for (var i = 0; i < 30; i++) {
    print(products[i]['id']);
    print(products[i]['title']);
    print(products[i]['description']);
    print(products[i]['price']);
    print('---------------');
  }
}

Future<String> fetchAll() async {
  final url = 'https://dummyjson.com/products';
  var res = await http.get(Uri.parse(url));
  if (res.statusCode == 200) {
    return res.body; // Return the raw JSON string
  } else {
    print('Error');
    return ''; // Return an empty string in case of error
  }
}

//return object of json

// Future<dynamic> fetchAll() async {
//   final url = 'https://dummyjson.com/products';
//   var res = await http.get(Uri.parse(url));
//   if (res.statusCode == 200) {
//     var obj = json.decode(res.body);
//     return obj;
//   } else {
//     print('Error');
//   }
// }
