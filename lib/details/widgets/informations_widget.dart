import 'package:flutter/material.dart';
import 'package:front_arquitetura_software/shared/models/informacoes_nutricionais_model.dart';

import 'nutricional_information_widget.dart';

class InformationsWidget extends StatelessWidget {
  final InformacoesNutricionaisModel informacoesNutricionais;
  const InformationsWidget({
    Key? key,
    required this.informacoesNutricionais,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
              top: BorderSide(width: 1.0, color: Colors.grey.shade300),
              bottom: BorderSide(width: 2.0, color: Colors.grey.shade300)),
        ),
        alignment: Alignment.topLeft,
        height: MediaQuery.of(context).size.width * 0.39,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 24),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Informações nutricionais",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF473D3A),
                  fontSize: 17),
            ),
            Container(
              height: MediaQuery.of(context).size.width * 0.24,
              child: Column(
                children: [
                  NutricionalInformationWidget(
                      text: "Calorias",
                      valor: informacoesNutricionais.calorias.toString()),
                  NutricionalInformationWidget(
                    text: "Proteínas",
                    valor: "${informacoesNutricionais.proteinas.toString()}g",
                  ),
                  NutricionalInformationWidget(
                      text: "Cafeína",
                      valor: "${informacoesNutricionais.cafeina.toString()}mg"),
                ],
              ),
            )
          ]),
        ));
  }
}
