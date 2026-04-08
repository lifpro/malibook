import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Paiement via Orange Money ou Stripe (UI + sélection ; intégration API côté backend / SDK à brancher).
class PaiementPage extends StatefulWidget {
  const PaiementPage({super.key, this.amountLabel});

  /// Libellé du montant affiché (ex. « 5 000 FCFA »). Si null, un placeholder discret.
  final String? amountLabel;

  @override
  State<PaiementPage> createState() => _PaiementPageState();
}

enum _PaymentChoice { orangeMoney, stripe }

class _PaiementPageState extends State<PaiementPage> {
  _PaymentChoice _method = _PaymentChoice.orangeMoney;
  final _phoneController = TextEditingController();

  static const Color _orangeMoney = Color(0xFFFF6600);
  static const Color _stripe = Color(0xFF635BFF);

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  void _submit() {
    // TODO: brancher Orange Money (API partenaire / WebView) ou Stripe (PaymentSheet / Checkout).
    final label = switch (_method) {
      _PaymentChoice.orangeMoney => 'Orange Money',
      _PaymentChoice.stripe => 'Stripe',
    };
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Paiement $label — à connecter à l’API')),
    );
  }

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).primaryColor;

    return Scaffold(
      appBar: AppBar(backgroundColor: primary, title: const Text('Paiement')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(
            'Récapitulatif',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.brown.shade800,
            ),
          ),
          const SizedBox(height: 12),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              gradient: LinearGradient(
                colors: [
                  Color.lerp(Colors.white, primary, 0.06)!,
                  Color.lerp(const Color(0xFFF8F4F0), primary, 0.1)!,
                ],
              ),
              border: Border.all(color: primary.withValues(alpha: 0.2)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Montant à payer',
                  style: TextStyle(fontSize: 13, color: Colors.brown.shade600),
                ),
                const SizedBox(height: 6),
                Text(
                  widget.amountLabel ?? '—',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: primary,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 28),
          Text(
            'Moyen de paiement',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.brown.shade800,
            ),
          ),
          const SizedBox(height: 12),
          _methodTile(
            title: 'Orange Money',
            subtitle: 'Paiement mobile Orange',
            selected: _method == _PaymentChoice.orangeMoney,
            accent: _orangeMoney,
            icon: Icons.phone_android_rounded,
            onTap: () => setState(() => _method = _PaymentChoice.orangeMoney),
          ),
          const SizedBox(height: 10),
          _methodTile(
            title: 'Carte bancaire ',
            subtitle: 'Visa, Mastercard…',
            selected: _method == _PaymentChoice.stripe,
            accent: _stripe,
            icon: Icons.credit_card_rounded,
            onTap: () => setState(() => _method = _PaymentChoice.stripe),
          ),
          const SizedBox(height: 24),
          if (_method == _PaymentChoice.orangeMoney) ...[
            TextField(
              controller: _phoneController,
              keyboardType: TextInputType.phone,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[\d+\s]')),
              ],
              decoration: InputDecoration(
                labelText: 'Numéro Orange Money',
                hintText: 'Ex. 70 00 00 00',
                prefixIcon: const Icon(Icons.phone_rounded),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: Colors.grey.shade50,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Le numéro doit correspondre au compte qui sera débité.',
              style: TextStyle(fontSize: 12, color: Colors.brown.shade600),
            ),
          ] else ...[
            Text(
              'Vous serez redirigé vers le paiement sécurisé Stripe (carte).',
              style: TextStyle(fontSize: 13, color: Colors.brown.shade700),
            ),
          ],
          const SizedBox(height: 32),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: _submit,
              style: ElevatedButton.styleFrom(
                backgroundColor: primary,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text('Confirmer le paiement'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _methodTile({
    required String title,
    required String subtitle,
    required bool selected,
    required Color accent,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(14),
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: selected ? accent : Colors.grey.shade300,
              width: selected ? 2 : 1,
            ),
            color: selected ? accent.withValues(alpha: 0.08) : Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: accent.withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(icon, color: accent, size: 28),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        subtitle,
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.brown.shade600,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  selected
                      ? Icons.radio_button_checked
                      : Icons.radio_button_off,
                  color: selected ? accent : Colors.grey,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
