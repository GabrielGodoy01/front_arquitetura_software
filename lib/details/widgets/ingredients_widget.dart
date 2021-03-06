import 'package:flutter/material.dart';
import 'package:front_arquitetura_software/shared/models/ingredients_model.dart';

import 'ingredients_icon_widget.dart';

class IngredientsWidget extends StatelessWidget {
  final List<Ingredients> ingredientes;
  const IngredientsWidget({
    Key? key,
    required this.ingredientes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
            top: BorderSide(width: 1.0, color: Colors.grey.shade300),
            bottom: BorderSide(width: 1.0, color: Colors.grey.shade300)),
      ),
      alignment: Alignment.topLeft,
      height: MediaQuery.of(context).size.width * 0.44,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 24),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Ingredientes",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF473D3A),
                fontSize: 17),
          ),
          Container(
            height: MediaQuery.of(context).size.width * 0.31,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return IngredientsIconWidget(
                      icon: ingredientes[index].icon,
                      text: ingredientes[index].ingrediente,
                      color: ingredientes[index].color);
                },
                itemCount: ingredientes.length),
          )
        ]),
      ),
    );
  }
}
