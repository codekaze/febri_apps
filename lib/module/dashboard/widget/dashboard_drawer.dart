import 'package:flutterx/core.dart';
import 'package:flutter/material.dart';

class DashboardDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.red[300],
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                  "https://digitalsynopsis.com/wp-content/uploads/2017/07/beautiful-color-ui-gradients-backgrounds-roseanna.png",
                ),
              ),
            ),
            child: Text(
              'C-Commerce v1.0',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            title: const Text('Codekaze Dashboard'),
            onTap: () {
              Get.back();
            },
          ),
          Divider(),
          ListTile(
            title: const Text('Login'),
            onTap: () {
              Get.to(LoginView());
            },
          ),
          ListTile(
            title: const Text('Product Category Selector'),
            onTap: () {
              Get.to(ProductCategorySelectorView());
            },
          ),
          ListTile(
            title: const Text('Order Success Page'),
            onTap: () {
              Get.to(OrderSuccessView());
            },
          ),
          ListTile(
            title: const Text('Cart Empty Page'),
            onTap: () {
              Get.to(CartEmptyView());
            },
          ),
        ],
      ),
    );
  }
}
