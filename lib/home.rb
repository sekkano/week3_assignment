require_relative "render_page"

class HomeApp
  include RenderPage
  def call(env)
    render_page("index")
  end
end
