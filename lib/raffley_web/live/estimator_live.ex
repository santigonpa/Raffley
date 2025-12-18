defmodule RaffleyWeb.EstimatorLive do
  use RaffleyWeb, :live_view

  def mount(_params, _session, socket) do #controller pass a conn struct and liveview a socket struct
    socket = assign(socket, tickets: 0, price: 3)

    {:ok, socket}
  end

  # def render(assigns) do
  #   we could also render the html here, if not it will automatically
  #   look for a template file based on the name of the module
  # ende

  def handle_event("add", %{"quantity" => quantity}, socket) do
    socket = update(socket, :tickets, &(&1 + String.to_integer(quantity)))

    {:noreply, socket}
  end
end
