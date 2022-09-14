
Clean Architecture Project Sample (Project template).

## Technologies used in Example

* [GetIt](https://pub.dev/packages/get_it) - service locator (DI)
* [Screen Util](https://pub.dev/packages/flutter_screenutil) - adaptive UI tools
* [Go Router](https://pub.dev/packages/go_router) - navigation
* [Json Annotation](https://pub.dev/packages/json_annotation) - code generation based for JSON parsing
* [Freezed](https://pub.dev/packages/freezed_annotation) - code genearion of data classes
* [Hive](https://pub.dev/packages/hive) - database
* [Dio](https://pub.dev/packages/dio) - Http client
* [Bloc](https://pub.dev/packages/flutter_bloc) - state management
* [Shared Preferences](https://pub.dev/packages/shared_preferences) - key-value storage

## SonarQube Setup

* Set `sonar.projectKey` in `sonar-project.properties`
* Replace main in `only: - main` to your main branch name in `.gitlab-ci.yml`

## DO AFTER SETUP

* `DefaultApiError` is default api error body - so change it to your purposes.
* `DioConst` is base api url location - so change it to your purposes.

## Build Runner

To generate classes:

`flutter packages pub run build_runner build`

Use the [watch] flag to watch the files' system for edits and rebuild as necessary.

`flutter packages pub run build_runner watch`

If you have conflicts use command:

`flutter pub run build_runner build --delete-conflicting-outputs`

# Build
## IOS
`flutter build ios --release`

`flutter build ios --flavor dev --release -t lib/core/flavors/main_dev.dart`

`flutter build ios --flavor prod --release -t lib/core/flavors/main_prod.dart`

## Android
### APK
`flutter build apk`

`flutter build apk --flavor dev -t lib/core/flavors/main_dev.dart`

`flutter build apk --flavor prod -t lib/core/flavors/main_prod.dart`

### AAB
`flutter build appbundle`

`flutter build appbundle --flavor dev -t lib/core/flavors/main_dev.dart`

`flutter build appbundle --flavor prod -t lib/core/flavors/main_prod.dart`

# run release
`flutter run --release`

`flutter run --flavor dev --release -t lib/core/flavors/main_dev.dart`

`flutter run --flavor prod --release -t lib/core/flavors/main_prod.dart`

# update IOS repos:
* Most common use case is after firebase libraries update
`cd ios
pod cache clean --all
pod repo update
pod update
cd ..
flutter clean
flutter pub get`

# flutter_launcher_icons
init flutter_launcher_icons

`flutter pub run flutter_launcher_icons:main -f pubspec.yaml`

run flutter_launcher_icons

`flutter pub run flutter_launcher_icons:main`

generate flutter_launcher_icons for both flavors

`flutter pub run flutter_launcher_icons:main -f flutter_launcher_icons*`