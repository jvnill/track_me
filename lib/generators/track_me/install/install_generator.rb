module TrackMe
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path("../templates", __FILE__)

    def copy_files
      copy_file '_js.html.haml', 'app/views/track_me/_js.html.haml'
      copy_file '_mixpanel.html.haml', 'app/views/track_me/_mixpanel.html.haml'
      copy_file '_kissmetrics.html.haml', 'app/views/track_me/_kissmetrics.html.haml'
      copy_file 'track_me.rb', 'config/initializers/track_me.rb'

      say "\n"
      say 'Please dont forget to add the js file to the head section of your html templates', :green
      say "\n"
      say "  = render 'track_me/js' if Rails.env.production?", :green
      say "\n"
      say 'and the call to include on application controller', :green
      say "\n"
      say "  include TrackMe", :green
      say "\n"
    end
  end
end
