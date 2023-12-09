import 'package:flutter/material.dart';
import 'package:pepperoni/pepperoni.dart';

class AllStoresWidget extends StatefulWidget {
  final TabController tabController;
  const AllStoresWidget({Key? key, required this.tabController})
      : super(key: key);

  @override
  State<AllStoresWidget> createState() => _AllStoresWidgetState();
}

class _AllStoresWidgetState extends State<AllStoresWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CategoryListWidget(
          items: [
            CategoryListItem(
              label: "Restaurantes",
              imageUrl:
                  'https://cdn-icons-png.flaticon.com/512/3310/3310748.png',
              onTap: (item) {
                widget.tabController.animateTo(1);
              },
            ),
            CategoryListItem(
              label: "Mercado",
              imageUrl:
                  'https://cdn-icons-png.flaticon.com/512/3028/3028626.png',
              onTap: (item) {
                widget.tabController.animateTo(2);
              },
            ),
            CategoryListItem(
              label: "Bebidas",
              imageUrl:
                  'https://cdn-icons-png.flaticon.com/512/2738/2738804.png',
              onTap: (item) {
                widget.tabController.animateTo(3);
              },
            ),
            CategoryListItem(
              label: "Farmacia",
              imageUrl:
                  'https://cdn-icons-png.flaticon.com/256/1029/1029134.png',
              onTap: (item) {
                widget.tabController.animateTo(4);
              },
            ),
            CategoryListItem(
              label: "Pet",
              imageUrl:
                  'https://i.pinimg.com/originals/c3/6e/a4/c36ea4eb6b5af4332c7f1f11eff88015.png',
              onTap: (item) {
                widget.tabController.animateTo(5);
              },
            ),
            CategoryListItem(
              label: "Clube Lfood",
              imageUrl:
                  'https://cdn-icons-png.flaticon.com/512/2535/2535138.png',
              onTap: (item) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Container(color: Colors.red),
                ));
              },
            ),
            CategoryListItem(
              label: "Feed",
              imageUrl:
                  'https://cdn-icons-png.flaticon.com/512/7245/7245073.png',
              onTap: (item) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Container(color: Colors.lightGreen),
                ));
              },
            )
          ],
        ),
      ],
    );
  }
}
