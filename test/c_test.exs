defmodule WindTail.Test.TestC do
  use ExUnit.Case

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
end
