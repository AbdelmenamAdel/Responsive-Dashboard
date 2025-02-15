import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({super.key});

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  int activeIndex = 0;

  final List<DrawerItemModel> items = [
    const DrawerItemModel(title: 'Dashboard', asset: Assets.imagesDashboard),
    const DrawerItemModel(
        title: 'My Transaction', asset: Assets.imagesMyTransctions),
    const DrawerItemModel(title: 'Statistics', asset: Assets.imagesStatistics),
    const DrawerItemModel(
        title: 'Wallet Account', asset: Assets.imagesWalletAccount),
    const DrawerItemModel(
        title: 'My Investments', asset: Assets.imagesMyInvestments),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if (index != activeIndex) {
            setState(() {
              activeIndex = index;
            });
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: DrawerItem(
            drawerItemModel: items[index],
            isActive: index == activeIndex,
          ),
        ),
      ),
    );
  }
}
