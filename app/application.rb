class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path == "/items"
      resp.write "You requested the Items"
    else
      resp.write "Items not found"
      resp.status = 404
    end
    resp.finish
  end

end
