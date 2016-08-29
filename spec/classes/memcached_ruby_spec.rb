require 'spec_helper'

RSpec.describe 'newrelic_plugins::memcached_ruby' do
  let(:params){{
    :license_key => random_license_key,
    :install_path => '/opt/newrelic_lugins',
    :user => 'newrelic',
    :agents => ['test'],
  }}
  on_supported_os.each do |os,facts|
    context os do
      let(:facts){facts.merge({:nr_ruby_found => true})}
      it {
        is_expected.to compile
      }
    end
  end
end
