import 'package:flutter/material.dart';

class CouponsAndNewsWidget extends StatefulWidget {
  final List<String> imageList;
  const CouponsAndNewsWidget({Key? key, required this.imageList})
      : super(key: key);

  @override
  State<CouponsAndNewsWidget> createState() => _CouponsAndNewsWidget();
}

class _CouponsAndNewsWidget extends State<CouponsAndNewsWidget> {
  late final pageController = PageController(
    viewportFraction: .8,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 150,
          width: MediaQuery.of(context).size.width,
          child: PageView.builder(
            controller: pageController,
            itemCount: widget.imageList.length,
            padEnds: false,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                child: AspectRatio(
                  aspectRatio: 369 / 192,
                  child: Image.network(
                    widget.imageList[index],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              );
            }, // Corrigir para usar a variável de instância pageController
          ),
        ),
        AnimatedBuilder(
          animation: pageController,
          builder: (context, child) => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              widget.imageList.length,
              (index) {
                final isSelected = index == pageController.page?.truncate();
                return Padding(
                  padding: const EdgeInsets.all(2),
                  child: CircleAvatar(
                    backgroundColor: isSelected
                        ? Colors.red
                        : Colors.black,
                    radius: isSelected ? 3 : 2,
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
