defmodule ChatWeb.PageView do
  use ChatWeb, :view

  def render("index.json", %{messages: messages}) do
    %{data: render_many(messages, ChatWeb.PageView, "message.json")}
  end

  def render("message.json", %{page: page}) do
    %{name: page.name, body: page.body}
  end
end
