Dynamo.under_test(Dytutorial.Dynamo)
Dynamo.Loader.enable
ExUnit.start

defmodule Dytutorial.TestCase do
  use ExUnit.CaseTemplate

  # Enable code reloading on test cases
  setup do
    Dynamo.Loader.enable
    :ok
  end
end
