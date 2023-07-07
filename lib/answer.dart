import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  const Answer(this.selectHandler, this.answerText, {super.key});

  // const Answer({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                const Color.fromARGB(255, 52, 135, 190)),
            textStyle: MaterialStateProperty.all(const TextStyle(
                decorationColor: Color.fromARGB(255, 37, 177, 165))),
          ),
          onPressed: selectHandler,
          child: Text(
            (answerText),
            style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          )),
    );
  }
}
