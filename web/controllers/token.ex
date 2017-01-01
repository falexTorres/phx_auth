defmodule Todo.Token do
  use Todo.Web, :controller

  def unauthenticated(conn, _params) do
    conn
    |> put_flash(:info, "you must be signed in to access this page")
    |> redirect(to: session_path(conn, :new))
  end

  def unauthorized(conn, _params) do
    conn
    |> put_flash(:error, "you must be signed in to access this page")
    |> redirect(to: session_path(conn, :new))
  end
end
