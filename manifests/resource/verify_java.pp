define newrelic_plugins::resource::verify_java ($newrelic_name = $name) {
  assert_private()
  if !(str2bool($::nr_java_found)) and !(defined(Class['java'])) {
    fail("The New Relic ${newrelic_name} requires a Java version >= 1.6 - For more information, see https://docs.newrelic.com/docs/plugins/java-plugin-installation-example")
  }
}
