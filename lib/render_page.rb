module RenderPage
  def render_page(title)
    content = File.read("lib/html/#{title}.html")
    [200, {"Content-type" => "text/html"}, [content]]
  end
end
