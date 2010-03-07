Refraction.configure do |req|

  if req.host == "www.jarinudom.com"
    req.permanent! :host => "jarinudom.com"  
  end

end