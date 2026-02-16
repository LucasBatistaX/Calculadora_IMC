import "package:calculadora_imc/domain/imc_service.dart";
import "package:calculadora_imc/enum/enum_classificacao.dart";
import "package:flutter/material.dart";

class ImcProvider extends ChangeNotifier {
  bool isLoading = false;
  String error = "";
  bool get isError => error.isNotEmpty;

  //Variavel do tipo ImcService, para ter acesso a regra de negocio.
  final ImcService _service;

  //Construtor, utilizando a variavel com acesso a regra de negocio.
  ImcProvider(this._service);

  //parametros para obter o calculo.
  double _imc = 0;
  EnumClassificacao? _classificacao;

  //getters.
  double getImc() {
    return _imc;
  }

  EnumClassificacao? get classificacao {
    return _classificacao;
  }

  //função que utiliza a regra de negocio e definindo a classificação.
  void calcular({
    required double pesoController,
    required double alturaController,
  }) async {

    isLoading = true;
    error = "";
    notifyListeners();

    try {
      _imc = _service.calcularImc(
        peso: pesoController,
        altura: alturaController,
      );

      _classificacao = _service.classificar(_imc);
      isLoading = false;

      notifyListeners();
    } catch (e) {
      error = e.toString();
      notifyListeners();
    }

    notifyListeners();
  }
}
