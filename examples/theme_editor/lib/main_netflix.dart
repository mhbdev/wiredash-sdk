import 'package:flutter/cupertino.dart';
import 'package:wiredash/wiredash.dart';
import 'package:wiredash_theme_editor/marianos_clones/netflix_clone.dart';

void main() {
  final app = Wiredash(
    projectId: '100000001',
    secret: 'panaplatformsecret',
    child: Netflix(),
    // No theming here, the theme is inherited from context when calling
    // Wiredash.of(context).show(inheritMaterialTheme: true)
  );
  runApp(app);
}
