import 'package:pisos_calculator/helpers/parse_helper.dart';

const kRequiredField = 'Campo obrigatório';
const kRequiredNumber = 'Número maior do que 0 obrigatório';

class ValidatorHelper {
  static String isNotEmptyNumber(String text) {
    return text.isEmpty
        ? kRequiredField
        : ParseHelper.toDouble(text) <= 0.0
            ? kRequiredNumber
            : null;
  }
}
