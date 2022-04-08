defmodule WeatherWeb.ChangeLocationComponent do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
    <div class="modal">
      <div class="module">
        <input type="text" name="location"/>
      </div>
    </div>
    """
  end
end
