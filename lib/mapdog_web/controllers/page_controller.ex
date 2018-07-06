defmodule MapdogWeb.PageController do
  use MapdogWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
