abstract class Failure {}

class CommonFailure implements Failure {
  Exception e;

  CommonFailure(this.e);
}

class DataSourceFailure implements Failure {
  Exception e;

  DataSourceFailure(this.e);
}

abstract class FeatureFailure implements Failure {}
