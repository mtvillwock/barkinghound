defmodule ChatWeb.NameView do
  use ChatWeb, :view
  def render("index.json", %{messages: messages}) do
    %{data: render_many(messages, ChatWeb.NameView, "message.json")}
  end

  def render("show.json", %{message: message}) do
    %{data: render_one(message, ChatWeb.NameView, "message.json")}
  end

  def render("message.json", %{name: name}) do
    %{title: name.title}
  end
end

