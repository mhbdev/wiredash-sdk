import 'package:flutter/cupertino.dart';
import 'package:wiredash/wiredash.dart';
import 'package:wiredash_theme_editor/marianos_clones/whatsapp_clone.dart';

void main() {
  final app = Wiredash(
    projectId: '100000001',
    secret: 'panaplatformsecret',
    theme: WiredashThemeData.fromColor(
      primaryColor: WhatsappUtils.appBarMobile,
      brightness: Brightness.light,
    ).copyWith(
      secondaryColor: Color(0xFFD6F5ED),
      primaryBackgroundColor: WhatsappUtils.chatBackground,
      secondaryBackgroundColor: WhatsappUtils.chatBackground2,
    ),
    child: WhatsApp(),
  );
  runApp(app);
}
