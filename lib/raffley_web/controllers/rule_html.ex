defmodule RaffleyWeb.RuleHTML do
  use RaffleyWeb, :html

  embed_templates "rule_html/*"


  # if the template is small we can put it here
  def show(assigns) do
    ~H"""
    <div class="rules">
      <h1>Don't Forget...</h1>
      <p>
        <%= @rule.text %>
      </p>
    </div>
    """
  end
end
