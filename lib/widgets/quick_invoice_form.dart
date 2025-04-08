import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_button.dart';
import 'package:responsive_dashboard/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      spacing: 24,
      children: [
        Row(
          spacing: 12,
          children: [
            Expanded(
                child: TitleTextField(
                    title: 'Customer name', hint: 'Type customer name')),
            Expanded(
              child: TitleTextField(
                  title: 'Customer Email', hint: 'Type customer email'),
            ),
          ],
        ),
        Row(
          spacing: 12,
          children: [
            Expanded(
                child: TitleTextField(
                    title: 'Item name', hint: 'Type customer name')),
            Expanded(
              child: TitleTextField(title: 'Item mount', hint: 'USD'),
            ),
          ],
        ),
        Row(
          spacing: 12,
          children: [
            Expanded(
              child: CustomButton(
                textColor: Color(0xFF4DB7F2),
                backgourndColor: Colors.transparent,
              ),
            ),
            Expanded(
              child: CustomButton(),
            ),
          ],
        )
      ],
    );
  }
}
