import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

abstract class BaseDatabase<T> {
  @protected
  abstract String boxName;

  Future<Box<T>> withBox() async {
    return Hive.openBox<T>(boxName);
  }
}
