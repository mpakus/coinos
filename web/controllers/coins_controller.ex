defmodule Coinos.CoinsController do
  use Coinos.Web, :controller

  def index(conn, _params) do
    {:ok, btc} = JSON.decode(fetch_currency.body)
    {:ok, ltc} = JSON.decode(fetch_currency("LTC").body)
    render conn, "index.html", btc: btc["last"], ltc: ltc["last"]
  end

  def fetch_currency(name \\ "BTC") do
    HTTPoison.start
    HTTPoison.get! "https://cex.io/api/ticker/#{name}/USD"    
  end
end
