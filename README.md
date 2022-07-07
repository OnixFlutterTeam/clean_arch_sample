

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



##Build Runner

To generate classes:

`flutter packages pub run build_runner build`

If you have conflicts use command:

`flutter pub run build_runner build --delete-conflicting-outputs`