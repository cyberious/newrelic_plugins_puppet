require 'puppetlabs_spec_helper/module_spec_helper'

require 'rspec-puppet-facts'
include RspecPuppetFacts

def random_license_key
  Array.new(40){ [*'0'..'9',*'A'..'F',*'a'..'f'].sample }.join
end
