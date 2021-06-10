# tdlib_example

Demonstrates how to use the tdlib plugin.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.

## Regenerate example code base

> For example, ios

```bash
# Create new project
flutter create -a java --template plugin --platforms ios --project-name tdlib --org org.naji.td.tdlib _tdlib

# Copy example code base
rm -rI ios
rsync -av ./_tdlib/example/ios/ ios/

# Clean up
rm -rI _tdlib
```

## Clean run

```bash
flutter clean && pod cache clean --all && flutter run --debug

# ios
./ios_cleanup_run.sh
```
