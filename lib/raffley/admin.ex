alias Raffley.Raffles.Raffle
alias Raffley.Repo
import Ecto.Query

defmodule Raffley.Admin do
  def list_raffles do
    Raffle
    |> order_by(desc: :inserted_at)
    |> Repo.all()
  end
end
