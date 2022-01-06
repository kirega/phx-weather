defmodule TommorowApi do
  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://api.tomorrow.io"

  plug Tesla.Middleware.Query,
    fields: [
      "temperature",
      "temperatureApparent",
      "humidity",
      "windSpeed",
      "pressureSeaLevel",
      "weatherCode"
    ],
    timesteps: "1h",
    units: "metric",
    apikey: api_key(),
    timezone: "Africa/Nairobi"

  plug Tesla.Middleware.JSON

  def api_key, do: Application.get_env(:weather, :tommorow_api_key)

  def weather(start_time, end_time) do
    get("/v4/timelines?location=-1.286389,36.817223&startTime=#{start_time}&endTime=#{end_time}")
  end
end
