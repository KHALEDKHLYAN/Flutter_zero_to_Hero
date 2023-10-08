import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertionPage extends StatefulWidget {
  const CurrencyConverterCupertionPage({super.key});

  @override
  State<CurrencyConverterCupertionPage> createState() => _CurrencyConverterCupertionPageState();
}

class _CurrencyConverterCupertionPageState extends State<CurrencyConverterCupertionPage> {
  final TextEditingController textEditingController = TextEditingController();
  double result = 0;

  void convert() {
    result = double.parse(textEditingController.text) * 146.71;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey3,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGrey3,
        middle:  Text('Currency Converter'),
        // centerTitle: true,
        // actions: [],
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'KSH ${result !=0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0)}',
                style: const TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              CupertinoTextField(
                controller: textEditingController,
                // obscureText: false,
                style: const TextStyle(
                  color: CupertinoColors.black,
                ),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                ),
                placeholder: 'Please enter amount in USD',
                prefix: const Icon(CupertinoIcons.money_dollar),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CupertinoButton(
                onPressed: convert,
                color: CupertinoColors.black,
                child: const Text('Convert!'),
              )
            ],
          ),
        ),
      ),
    );
  }
}