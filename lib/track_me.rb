require "track_me/version"

module TrackMe
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def trackme(actions)
      @trackme_actions = actions

      before_filter :set_trackme_actions

      include TrackMe::InstanceMethods
    end

    def trackme_actions
      @trackme_actions
    end
  end

  module InstanceMethods
    def set_trackme_actions
      @trackme_string, opts = self.class.trackme_actions[params[:action].to_sym]

      if opts && opts[:object]
        obj = instance_variable_get "@#{opts[:object]}"
        @trackme_object = obj.attributes.except('created_at', 'updated_at', 'delta') if obj
      end
    end
  end
end
