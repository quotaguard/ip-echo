defmodule IpEchoWeb.Router do
  use IpEchoWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", IpEchoWeb do
    pipe_through :api
  end
end
