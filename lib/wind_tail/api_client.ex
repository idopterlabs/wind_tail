defmodule WindTail.APIClient do
  @moduledoc """
  Sends requests to the API Client
  """
  require Logger

  defmodule Credentials do
    defstruct client_id: nil, client_secret: nil
  end

  @doc """
  Performs autheticated HTTP request against full_url
  """
  @spec request(String.t(), map() | nil) :: :ok
  def request(_full_url, credentials \\ nil) do
    config = credentials || get_config()

    credentials = %Credentials{
      client_id: config[:client_id],
      client_secret: config[:client_secret]
    }

    unless credentials.client_id && credentials.client_secret do
      raise "Missing credentials"
    end

    # Performs actual request with full_url

    :ok
  end

  defp get_config() do
    Application.get_env(:wind_tail, __MODULE__)[:credentials]
  end
end
