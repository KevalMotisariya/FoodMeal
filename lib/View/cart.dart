import 'dart:developer';

class Cart {
  static List<Map<String, dynamic>> cartList = [];

  addtoCart(Map<String, dynamic> data) {
    log("Added $data");
    final _data = data;

    if (cartList.any((e) => e["name"] == data['name'])) {
      int index = cartList.indexWhere((e) => e['name'] == data['name']);
      cartList[index]['qty']++;
      cartList[index]['total_a'] = data['price'] * cartList[index]['qty'];
    } else {
      _data.addAll({'qty': 1, "total_a": data['price']});
      cartList.add({..._data, 'qty': 1, "total_a": data['price']});
    }
    log("cart data--->${cartList}");
  }

  removeCart(Map<String, dynamic> data) {}
}
