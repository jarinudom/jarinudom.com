Refraction.configure do |req|

  if req.host == "www.jarinudom.com"
    req.permanent! :host => "jarinudom.com"  
  end

  if req.path == "+"
    req.permanent! "https://plus.google.com/102443793781999255197"
  end

end

