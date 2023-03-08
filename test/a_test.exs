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
    test "raises error" do
      invalid_credentials = %{}

      assert_raise RuntimeError, fn ->
        WindTail.APIClient.request("api.foo.com", invalid_credentials)
      end
    end
  end
end
