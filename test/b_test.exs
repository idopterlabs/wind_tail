defmodule WindTail.Test.TestB do
  use ExUnit.Case, async: true

  describe "request/1 with valid credentials" do
    test "returns :ok" do
      Process.sleep(200)
      assert :ok == WindTail.APIClient.request("api.foo.com")
    end

    test "returns :ok 2" do
      Process.sleep(200)
      assert :ok == WindTail.APIClient.request("api.foo.com")
    end

    test "returns :ok 3" do
      Process.sleep(200)
      assert :ok == WindTail.APIClient.request("api.foo.com")
    end
  end
end
