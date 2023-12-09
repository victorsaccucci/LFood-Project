import 'package:flutter/material.dart';

class CategoryListWidget extends StatelessWidget {
  final List<CategoryListItem> items;

  const CategoryListWidget({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Wrap(
        spacing: 5,
        runSpacing: 10,
        children: List.from(
          items.map(
            (item) => _CategoryItemWidget(
              item: item,
            ),
          ),
        ),
      ),
    );
  }
}

class _CategoryItemWidget extends StatelessWidget {
  final CategoryListItem item;

  const _CategoryItemWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 4.2,
      child: InkWell(
        onTap: () {
          item.onTap(item);
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: AspectRatio(
                aspectRatio: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0),
                    child: Image.network(
                      item.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Text(item.label)
          ],
        ),
      ),
    );
  }
}

class CategoryListItem {
  final String label;
  final String imageUrl;
  final void Function(CategoryListItem item) onTap;

  CategoryListItem({
    required this.label,
    required this.imageUrl,
    required this.onTap,
  });
}
