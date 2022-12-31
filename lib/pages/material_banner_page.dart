import 'package:flutter/material.dart';

class MaterialBannerPage extends StatelessWidget {
  const MaterialBannerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material Banner'),
        elevation: 6,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
              ScaffoldMessenger.of(context).showMaterialBanner(
                MaterialBanner(
                  content: const Text('중요한 알림이 있습니다.'),
                  leading: const Icon(Icons.payment_outlined),

                  /// action이 한개라도 아래로 내려가게 합니다.
                  // forceActionsBelow: true,
                  actions: [
                    TextButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                            .hideCurrentMaterialBanner();
                      },
                      child: const Text('확인'),
                    ),
                    TextButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                            .hideCurrentMaterialBanner();
                      },
                      child: const Text('무시'),
                    ),
                  ],
                ),
              );
            },
            child: const Text('Show Banner')),
      ),
    );
  }
}
