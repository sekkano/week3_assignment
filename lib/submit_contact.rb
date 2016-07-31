class SubmitApp
  
  
  def call(env)
    content = File.read("lib/html/response.html")
    
    main_index = content.index("main")
    main_index += 5
    
    request = Rack::Request.new(env)
    
    if request.post?
      name = request.POST["name"]
      email = request.POST["email"]
    
      content.insert(main_index, %Q{
        <p>
          Name: #{name}<br>
          Email: #{email}<br>
          Message: Thank you! I will be in contact shortly.
        </p>
      })
    end
    
    [200, {"Content-type" => "text/html"}, [content]]
  end
end