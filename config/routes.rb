Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })

  get("/square_root/:num_input", { :controller => "calculations", :action => "square_root" })

  get("/square/:num_input", { :controller => "calculations", :action => "square" })

  get("/random/:min/:max", { :controller => "calculations", :action => "random" })

  get("/payment/:rate/:years/:principal", { :controller => "calculations", :action => "payment" })

end
