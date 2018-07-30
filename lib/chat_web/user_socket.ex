def connect(%{"token" => token, "user_id" => user_id, "user_name" => user_name}, socket) do
  if ElChat.Helper.ensure_hash(token, "#{user_id}:#{user_name}") do
    {:ok, socket |> assign(:user_id, user_id)}
  else
    {:error, %{reason: "unauthorized"}}
  end
end
