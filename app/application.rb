require 'pry'
class Application
  def call(env)
    resp = Rack::Response.new

    time = Time.new
    binding.pry
    if time.hour >= 12
      # binding.pry
      resp.write "Afternoon\n"
    else
      resp.write "Morning\n"
      # binding.pry

    end

    resp.finish
  end
end
