class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(new)

    if req.path == "/items/<Item Name>"
      resp.write "You requested the songs"
    else
      resp.write "Route not found"
      resp.status = 404
    end
    resp.finish
  end

end
