defmodule ChatWeb.NameController do
  use ChatWeb, :controller
  # alias Chat.Chats

  def show(conn, _params) do
    message = %{title: "foo"}

    render conn, "show.json", message: message
  end

  def index(conn, _params) do
    messages = [%{title: "foo"}, %{title: "bar"}]

    render conn, "index.json", messages: messages
  end
end
