defmodule Dytutorial.Mixfile do
  use Mix.Project

  def project do
    [ app: :dytutorial,
      version: "0.0.1",
      build_per_environment: true,
      dynamos: [Dytutorial.Dynamo],
      compilers: [:elixir, :dynamo, :app],
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [ applications: [:cowboy, :dynamo],
      mod: { Dytutorial, [] } ]
  end

  defp deps do
    [ { :cowboy, github: "extend/cowboy" },
      { :dynamo, "~> 0.1.0-dev", github: "elixir-lang/dynamo" },
      { :mongoex, github: "mururu/mongoex" },
      { :exjson, git: "https://github.com/guedes/exjson.git" } ]
  end
end
