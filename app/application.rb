class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(new)

    if req.path == "/items/<Item Name>"
      resp.write "You requested the Items"
    else
      resp.write "Items not found"
      resp.status = 404
    end
    resp.finish
  end

end
