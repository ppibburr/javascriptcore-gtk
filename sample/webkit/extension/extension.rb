require 'javascriptcore-gtk/extension'

ext = WebKit2WebExtension.default

def c a, &b
  p :a, a 
  p b.call(self)
end

ext.init do |pg|
  ctx = pg.main_frame.javascript_global_context
  
  JavaScriptCore.execute_script(ctx, 'var foo={bar: 1};')
  
  go = ctx.get_global_object
  
  p go[:foo][:bar]
  
  go[:main] = self
  
  JavaScriptCore.execute_script(ctx, 'main.c(55, (t) => {return t.p(77);});')
end

