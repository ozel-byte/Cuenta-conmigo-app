import 'package:flutter/material.dart';

class CustomGeneralButton extends StatelessWidget {
  final bool isLoading;
  final String textOfButton;
  final Function() onPressed;
  final bool isTransparent;
  const CustomGeneralButton({
    Key? key,
    this.isLoading = false,
    required this.textOfButton,
    required this.onPressed,
    this.isTransparent = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FilledButton.tonal(
        style: ButtonStyle(
            shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    side: isTransparent ? const BorderSide(color: Colors.black, width: 1) : const BorderSide(color: Colors.transparent, width: 0)
                    )),
                    backgroundColor: isTransparent ? const MaterialStatePropertyAll<Color>(Colors.transparent) : null,
                    shadowColor: const MaterialStatePropertyAll<Color>(Colors.transparent),
            fixedSize: MaterialStatePropertyAll(Size(MediaQuery.of(context).size.width * 0.93, 50))),
        onPressed: onPressed,
        child: isLoading
            ? const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                ))
            : Text(textOfButton, style: TextStyle(
              color: isTransparent ? Theme.of(context).primaryColor : null
            ),
            )
            );
  }
}
