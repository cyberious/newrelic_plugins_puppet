require 'spec_helper'

RSpec.describe 'newrelic_plugins::mysql' do
  let(:params){{
    :license_key => random_license_key,
    :install_path => '/opt/newrelic_lugins',
    :user => 'newrelic',
    :servers => ['test'],
  }}
  on_supported_os.each do |os,facts|
    let(:facts){facts.merge({:nr_java_found => true})}
    it {
      is_expected.to compile
    }
  end
end
