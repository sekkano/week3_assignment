require_relative "render_page"
class ContactApp
  include RenderPage
  def call(env)
    render_page("contact")
  end
end