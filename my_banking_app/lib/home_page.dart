import 'package:flutter/material.dart';

class BankingHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minha Conta'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            buildBankingCard(
              icon: Icons.account_balance_wallet_outlined,
              title: 'Saldo disponível',
              subtitle: 'R\$ 5.000,00',
              context: context,
            ),
            SizedBox(height: 16.0),
            buildBankingCard(
              icon: Icons.attach_money_outlined,
              title: 'Última transação',
              subtitle: 'R\$ 200,00 - Supermercado',
              context: context,
            ),
            SizedBox(height: 16.0),
            buildBankingCard(
              icon: Icons.credit_card_outlined,
              title: 'Cartão de Crédito',
              subtitle: 'R\$ 1.000,00 - Limite disponível',
              context: context,
            ),
            SizedBox(height: 16.0),
            buildBankingCard(
              icon: Icons.savings_outlined,
              title: 'Poupança',
              subtitle: 'R\$ 10.000,00',
              context: context,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBankingCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required BuildContext context,
  }) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Theme.of(context).primaryColor.withOpacity(0.15),
              child: Icon(icon, color: Theme.of(context).primaryColor),
            ),
            SizedBox(width: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                SizedBox(height: 4.0),
                Text(
                  subtitle,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
