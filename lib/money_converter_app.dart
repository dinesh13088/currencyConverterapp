import 'package:flutter/material.dart';

class CurrencyConverterApp extends StatefulWidget {
  const CurrencyConverterApp({super.key});
  @override
  State<CurrencyConverterApp> createState() =>_CurrencyConverterApp();
}

class _CurrencyConverterApp extends State<CurrencyConverterApp> {
  final TextEditingController textEditingController = TextEditingController();
  double result = 0;
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var border = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.black,
        width: 1.5,
      ),
      borderRadius: BorderRadius.circular(4),
    );
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(Icons.person),
        ],
        title: const Text(
          'Currency Converter',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        elevation: 0,
      ),
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                result.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 70,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: TextField(
                  controller: textEditingController,
                  decoration: InputDecoration(
                    hintText: 'Please Enter the amount in dollar',
                    prefixIcon: const Icon(
                      Icons.monetization_on_sharp,
                    ),
                    hintStyle: const TextStyle(
                      color: Colors.black,
                    ),
                    prefixIconColor: Colors.black,
                    fillColor: Colors.white,
                    filled: true,
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = double.parse(textEditingController.text) * 133;
                    });
                  },
                  style: ButtonStyle(
                    elevation: const MaterialStatePropertyAll(14),
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.black),
                    foregroundColor:
                        const MaterialStatePropertyAll(Colors.white),
                    minimumSize: const MaterialStatePropertyAll(
                      Size(double.infinity, 50),
                    ),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Convert',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
