require 'pry'
class Application
  def call(env)
    resp = Rack::Response.new

    time = Time.new.hour
    # binding.pry
    if time <= 12
      # binding.pry
      resp.write "Morning\n"
    else
      resp.write "Afternoon\n"
      # binding.pry
    end

    resp.finish
  end
end
