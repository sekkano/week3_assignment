class Navigation
  def initialize(app)
    @app = app
  end
  
  def call(env)
    status, headers, response = @app.call(env)
    response_body = response.join("\n")
    
    header_index = response_body.index("/header")
    header_index += 8
    
    response_body.insert(header_index, %Q{
      <nav>
        <ul>
          <li><a href="/home">Home</a></li>
          <li><a href="/about">About Me</a></li>
          <li><a href="/resume">Resume</a></li>
          <li><a href="/contact">Contact</a></li>
        </ul>
      </nav>
    })
    
    headers["Content-length"] = response_body.length.to_s
    
    [status, headers, [response_body]]
  end
end
