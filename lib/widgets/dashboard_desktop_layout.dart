import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/my_cards_and_transction_history_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: CustomDrawer(),
        ),
        SizedBox(width: 16),
        Expanded(
          flex: 6,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: AllExpensessAndQuickInvoiceSection(),
                ),
              )
            ],
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          flex: 4,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Column(
                    spacing: 24,
                    children: [
                      MyCardsAndTransctionHistorySection(),
                      Expanded(child: IncomeSection()),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
