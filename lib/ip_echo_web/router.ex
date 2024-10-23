defmodule IpEchoWeb.Router do
  use IpEchoWeb, :router

  scope "/", IpEchoWeb do
    get "/", EchoController, :index
    get "/*path", EchoController, :index
    post "/*path", EchoController, :index
    put "/*path", EchoController, :index
    delete "/*path", EchoController, :index
    patch "/*path", EchoController, :index
    options "/*path", EchoController, :index
  end
end
