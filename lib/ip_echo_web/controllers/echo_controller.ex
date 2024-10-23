defmodule IpEchoWeb.EchoController do
  use IpEchoWeb, :controller

  def index(conn, _params) do
    ip = 
      conn.remote_ip
      |> Tuple.to_list()
      |> Enum.join(".")

    conn
    |> json(%{ip: ip})
  end
end
