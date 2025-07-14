import 'package:flutter/material.dart';

class FeatureGrid extends StatelessWidget {
  const FeatureGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200, // Fixed height for horizontal scroll
      child: GridView(
        scrollDirection: Axis.horizontal, // Horizontal scrolling
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 0,
          crossAxisSpacing: 12,
          childAspectRatio: 100 / 75,
        ),
        padding: const EdgeInsets.only(
          top: 12.0,
          bottom: 12.0
        ),
        children: [
          _buildFeatureItem(
            icon: Icons.shopping_bag_outlined,
            label: 'Surveys',
          ),
          _buildFeatureItem(
            icon: Icons.games_outlined,
            label: 'Play Games',
          ),
          _buildFeatureItem(
            icon: Icons.video_library_outlined,
            label: 'Watch Videos',
          ),
          _buildFeatureItem(
            icon: Icons.download_outlined,
            label: 'Download App',
          ),
          _buildFeatureItem(
            icon: Icons.quiz_outlined,
            label: 'Quiz',
          ),
          _buildFeatureItem(
            icon: Icons.calendar_today_outlined,
            label: 'Click Offers',
          ),
          _buildFeatureItem(
            icon: Icons.location_on_outlined,
            label: 'Cashbacks',
          ),
          _buildFeatureItem(
            icon: Icons.location_on_outlined,
            label: 'Cashbacks',
          ),
          _buildFeatureItem(
            icon: Icons.star_outlined,
            label: 'Rewards',
          ),
          _buildFeatureItem(
            icon: Icons.card_giftcard_outlined,
            label: 'Gifts',
          ),
          _buildFeatureItem(
            icon: Icons.account_balance_wallet_outlined,
            label: 'Wallet',
          ),
          _buildFeatureItem(
            icon: Icons.settings_outlined,
            label: 'Settings',
          ),
          _buildFeatureItem(
            icon: Icons.notifications_outlined,
            label: 'Notifications',
          ),
          _buildFeatureItem(
            icon: Icons.help_outline,
            label: 'Help',
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureItem({
    required IconData icon,
    required String label,
  }) {
    return GestureDetector(
      onTap: () {
        print('Tapped: $label');
      },
      child: SizedBox(
        width: 100, // Fixed width for the item to ensure alignment
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: const Color(0xFFFFE4E1),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Icon(
                icon,
                size: 24,
                color: const Color(0xFFFF6B47),
              ),
            ),
            const SizedBox(height: 6),
            Text(
              label,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
                height: 1.1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}