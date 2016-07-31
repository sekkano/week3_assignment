require "rack"

require_relative "home"
require_relative "about_me"
require_relative "resume"
require_relative "contact"
require_relative "submit_contact"
require_relative "nav"

class Application

  def self.run
    Rack::Builder.new do
      use Navigation
      map "/" do
        run HomeApp.new
      end
      
      map "/about" do
        run AboutApp.new
      end
      
      map "/resume" do
        run ResumeApp.new
      end
      
      
      map "/contact" do
        run ContactApp.new
      end
      
      map "/submit_contact" do
        run SubmitApp.new
      end
      
      
    end
  end
end
