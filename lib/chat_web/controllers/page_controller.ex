defmodule ChatWeb.PageController do
  use ChatWeb, :controller
  alias Chat.Chats

  def index(conn, _params) do
    messages = Chats.list_messages

    render conn, "index.json", messages: messages
  end
end
