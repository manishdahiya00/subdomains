Rails.application.routes.draw do
  get "/domains", to: "subdomains#show"

  constraints subdomain: /.+/ do
    get "/domains", to: "subdomains#show"
  end
end
