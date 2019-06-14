class Application

  attr_accessor :price

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path == "/items"
      # resp.write "You requested the Items"
      @price
    elsif
      req.path != "/items"

      resp.write "Route not found"
      resp.status = 404
    else
      resp.write "Item not found"
      resp.status = 400
    end
    resp.finish
  end

end
