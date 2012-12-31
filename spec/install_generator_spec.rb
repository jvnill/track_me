require 'spec_helper'
require 'rails/generators'
require 'generators/track_me/install/install_generator'
require 'generator_spec/test_case'

describe TrackMe::InstallGenerator do
  include GeneratorSpec::TestCase
  destination File.expand_path("../../tmp", __FILE__)

  before do
    prepare_destination
    run_generator
  end

  specify 'config file is properly generated' do
    assert_file 'config/initializers/track_me.rb', /ENABLED_METRICS/
  end

  specify 'metric templates are properly generated' do
    assert_file 'app/views/track_me/_js.html.haml'
    assert_file 'app/views/track_me/_mixpanel_init.html.haml', /Initialize Mixpanel/
    assert_file 'app/views/track_me/_kissmetrics_init.html.haml', /Initialize Kissmetrics/
  end
end
