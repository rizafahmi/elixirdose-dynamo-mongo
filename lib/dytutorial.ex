defmodule Dytutorial do
  use Application.Behaviour

  @doc """
  The application callback used to start this
  application and its Dynamos.
  """
  def start(_type, _args) do
    Dytutorial.Dynamo.start_link([max_restarts: 5, max_seconds: 5])
  end

  def initDb do

  end
end
