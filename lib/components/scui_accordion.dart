import 'package:flutter/material.dart';

class SCUIAccordion extends StatelessWidget {
  final Widget trigger;
  final Widget content;

  const SCUIAccordion(
      {super.key, required this.trigger, required this.content});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        trigger,
        content,
      ],
    );
  }
}

class SCUIAccordionItem extends StatelessWidget {
  final Widget child;

  const SCUIAccordionItem({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.black)),
      ),
      child: child,
    );
  }
}

class SCUIAccordionTrigger extends StatelessWidget {
  final Widget child;
  final bool isOpen;

  const SCUIAccordionTrigger(
      {super.key, required this.child, required this.isOpen});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          child,
          Icon(
            Icons.arrow_drop_down,
            size: 24.0,
            color: isOpen ? Colors.blue : Colors.black,
          ),
        ],
      ),
    );
  }
}

class SCUIAccordionContent extends StatelessWidget {
  final Widget child;
  final bool isOpen;

  const SCUIAccordionContent(
      {super.key, required this.child, required this.isOpen});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: isOpen ? null : 0,
      duration: const Duration(milliseconds: 200),
      child: child,
    );
  }
}
