require 'spec_helper'

class FooController < ActionController::Base
  include TrackMe
end

describe FooController do
  before :each do
    @foo = FooController.new
    @foo.class.trackme index: ['My first tracked action']
  end

  describe 'trackme' do
    it 'should set @trackme_actions which caches the options passed to #trackme' do
      @foo.class.instance_variable_get('@trackme_actions')[:index].should == ['My first tracked action']
    end
  end
end
