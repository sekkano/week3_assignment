require_relative "render_page"

class AboutApp
  include RenderPage
  def call(env)
    render_page("about")
  end
end