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
          ],
        ),
        CouponsAndNewsWidget(
          imageList: [
            'https://static.ifood-static.com.br/image/upload/t_high,q_100/webapp/landing/landing-banner-2.png',
            'https://i.ytimg.com/vi/QTgEPzjqykM/maxresdefault.jpg',
            'https://1.bp.blogspot.com/-mTwYwCRVKfM/YE-WAnvbzrI/AAAAAAAADSE/I847wTuHpCoE_FujeSX2TTJqKv6ibndogCLcBGAsYHQ/s900/Promo%25C3%25A7%25C3%25A3o-Ifood-Tudo-Por-Apenas-0%252C99.webp',
            'https://ab697927.flyingcdn.com/wp-content/uploads/2022/03/promocao-1-ano-de-ifood.jpg',
            'https://1.bp.blogspot.com/-W_ewK0YSBLU/Xd064tA2woI/AAAAAAAACbg/aXMKzN0U_781ECkTfFexuBsRFQqtw3YSgCLcBGAsYHQ/w1600/quarteirao-sanduiche-mc-donalds-por-1-real-promocao-esquenta.png',
          ],
        ),
       AdvertisingWidget(
        imageUrl: 'https://ab697927.flyingcdn.com/wp-content/uploads/2022/03/promocao-1-ano-de-ifood.jpg'
        ),
      ],
    );
  }
}
