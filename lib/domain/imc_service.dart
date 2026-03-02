import 'package:calculadora_imc/enum/enum_classificacao.dart';
import 'package:calculadora_imc/utils/app_sizes.dart';

class ImcService {
  late double peso;
  late double altura;

  //Calcular IMC.
  double calcularImc({required double peso, required double altura}) {
    return peso / (altura * altura / AppSizes.format);
  }

  //Classificação.
  EnumClassificacao classificar(double imc) {
    if (imc < 18.5) return EnumClassificacao.magreza;
    if (imc >= 18.5 && imc < 25.0) return EnumClassificacao.normal;
    if (imc >= 25.0 && imc < 30) return EnumClassificacao.sobrepeso;
    return EnumClassificacao.obesidade;
  }
}
