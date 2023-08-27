import 'package:extended_phone_number_input/consts/enums.dart';
import 'package:extended_phone_number_input/phone_number_input.dart';
import 'package:flutter/material.dart';

class PhoneInput extends StatelessWidget {
  const PhoneInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: const BorderRadius.all(Radius.circular(10.0))),
      child: const PhoneNumberInput(
          initialCountry: 'NG',
          locale: 'en',
          countryListMode: CountryListMode.dialog,
          enabledBorder: OutlineInputBorder(borderSide: BorderSide.none)),
    );
  }
}
