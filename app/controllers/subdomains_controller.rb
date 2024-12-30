class SubdomainsController < ApplicationController
  def show
    @subdomain = request.subdomain
    # puts request.to_json
    # @subdomain = Subdomain.find_by(name: request.subdomain)
    if @subdomain
      render plain: "Welcome to #{request.inspect} #{request.host.split(".").first}"
    else
      render plain: "Subdomain not found"
    end
  end
end
