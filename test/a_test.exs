defmodule WindTail.Test.TestA do
  use ExUnit.Case, async: true

  describe "request/1 with valid credentials" do
    test "returns :ok" do
      assert :ok == WindTail.APIClient.request("api.foo.com")
    end

    test "returns :ok 2" do
      assert :ok == WindTail.APIClient.request("api.foo.com")
    end

    test "returns :ok 3" do
      assert :ok == WindTail.APIClient.request("api.foo.com")
    end
  end

  describe "request/1 with invalid credentials" do
    setup do
      config = Application.get_env(:wind_tail, WindTail.APIClient)

      Application.put_env(:wind_tail, WindTail.APIClient, nil)

      on_exit(fn ->
        Application.put_env(:wind_tail, WindTail.APIClient, config)
      end)
    end

    test "raises error" do
      assert_raise RuntimeError, fn ->
        WindTail.APIClient.request("api.foo.com")
      end
    end
  end
end
