defmodule WeatherWeb.PageController do
  use WeatherWeb, :controller
  require Logger

  def index(conn, _params) do
    require Logger
    now = DateTime.utc_now()
    end_time = DateTime.add(now, 8 * 3600, :second) |> DateTime.to_iso8601()
    now = now |> DateTime.to_iso8601()

    # {:ok, res = %{body: %{"data" => %{"timelines" => [timelines]}}}} =
    #   TommorowApi.weather(now, end_time)

    Logger.error("#{inspect(now)}")
    # Logger.error("#{inspect(timelines)}")

    timelines = %{
      "endTime" => "2022-01-07T00:00:00+03:00",
      "intervals" => [
        %{
          "startTime" => "2022-01-06T16:00:00+03:00",
          "values" => %{
            "humidity" => 48.8,
            "pressureSeaLevel" => 1010.91,
            "temperature" => 23.32,
            "temperatureApparent" => 23.32,
            "weatherCode" => 1101,
            "windSpeed" => 4.99
          }
        },
        %{
          "startTime" => "2022-01-06T17:00:00+03:00",
          "values" => %{
            "humidity" => 56.04,
            "pressureSeaLevel" => 1011.78,
            "temperature" => 21.99,
            "temperatureApparent" => 21.99,
            "weatherCode" => 1101,
            "windSpeed" => 4.52
          }
        },
        %{
          "startTime" => "2022-01-06T18:00:00+03:00",
          "values" => %{
            "humidity" => 63.5,
            "pressureSeaLevel" => 1012.81,
            "temperature" => 20.78,
            "temperatureApparent" => 20.78,
            "weatherCode" => 1001,
            "windSpeed" => 4.08
          }
        },
        %{
          "startTime" => "2022-01-06T19:00:00+03:00",
          "values" => %{
            "humidity" => 72.48,
            "pressureSeaLevel" => 1013.86,
            "temperature" => 19.3,
            "temperatureApparent" => 19.3,
            "weatherCode" => 1001,
            "windSpeed" => 3.49
          }
        },
        %{
          "startTime" => "2022-01-06T20:00:00+03:00",
          "values" => %{
            "humidity" => 81.46,
            "pressureSeaLevel" => 1014.92,
            "temperature" => 17.82,
            "temperatureApparent" => 17.82,
            "weatherCode" => 1001,
            "windSpeed" => 2.9
          }
        },
        %{
          "startTime" => "2022-01-06T21:00:00+03:00",
          "values" => %{
            "humidity" => 87.93,
            "pressureSeaLevel" => 1015.87,
            "temperature" => 16.7,
            "temperatureApparent" => 16.7,
            "weatherCode" => 1101,
            "windSpeed" => 2.33
          }
        },
        %{
          "startTime" => "2022-01-06T22:00:00+03:00",
          "values" => %{
            "humidity" => 91.01,
            "pressureSeaLevel" => 1016.48,
            "temperature" => 16.34,
            "temperatureApparent" => 16.34,
            "weatherCode" => 1101,
            "windSpeed" => 2.33
          }
        },
        %{
          "startTime" => "2022-01-06T23:00:00+03:00",
          "values" => %{
            "humidity" => 94.53,
            "pressureSeaLevel" => 1016.81,
            "temperature" => 15.89,
            "temperatureApparent" => 15.89,
            "weatherCode" => 1102,
            "windSpeed" => 2.54
          }
        },
        %{
          "startTime" => "2022-01-07T00:00:00+03:00",
          "values" => %{
            "humidity" => 96.19,
            "pressureSeaLevel" => 1017.06,
            "temperature" => 15.77,
            "temperatureApparent" => 15.77,
            "weatherCode" => 1001,
            "windSpeed" => 2
          }
        }
      ],
      "startTime" => "2022-01-06T16:00:00+03:00",
      "timestep" => "1h"
    }

    # Enum.map(timelines["intervals"], fn interval ->
    #   date = interval["startTime"] |> Timex.parse!("{ISO:Extended}")
    #   if date.hour >= 12 do

    #   end
    # end)

    render(conn, "index.html", data: timelines)
  end
end
