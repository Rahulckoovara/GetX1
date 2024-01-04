import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live1/style.dart';
 
class HomeController extends GetxController {
  final RxInt currentIndex = 0.obs;
}
 
class Home extends StatelessWidget {
  final HomeController controller = HomeController();
 
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TT.Appbar,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text('PAGE INDEX ${controller.currentIndex.value }',
              style: TT.Account,),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        child: Obx(
          () => BottomNavigationBar(
            backgroundColor: Colors.black,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            currentIndex: controller.currentIndex.value,
            onTap: (index) {
              controller.currentIndex.value = index;
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.print_outlined),
                label: 'Manifest',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.file_copy_outlined),
                label: 'Reports',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

