module TrackMe
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path("../templates", __FILE__)

    def copy_files
      copy_file '_js.html.haml', 'app/views/track_me/_js.html.haml'
      copy_file '_init.html.haml', 'app/views/track_me/_init.html.haml'
      copy_file '_mixpanel.html.haml', 'app/views/track_me/_mixpanel.html.haml'
      copy_file '_mixpanel_init.html.haml', 'app/views/track_me/_mixpanel_init.html.haml'
      copy_file '_kissmetrics.html.haml', 'app/views/track_me/_kissmetrics.html.haml'
      copy_file '_kissmetrics_init.html.haml', 'app/views/track_me/_kissmetrics_init.html.haml'
      copy_file 'track_me.rb', 'config/initializers/track_me.rb'

      say "\n"
      say 'Please dont forget to add the init file to the head section of your html templates.  The main reason why the init file is separated is for applications that use pjax or turbolinks where the head section is only loaded once.', :green
      say "\n"
      say "  = render 'track_me/init'", :green
      say "\n"
      say "You can then add the partial that actually sends the data"
      say "\n"
      say "  = render 'track_me/js'", :green
      say "\n"
      say 'and then include the main module on application controller', :green
      say "\n"
      say "  include TrackMe", :green
      say "\n"
    end
  end
end
