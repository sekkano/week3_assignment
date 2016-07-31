require_relative "render_page"
class ResumeApp
  include RenderPage
  def call(env)
    render_page("resume")
  end
end