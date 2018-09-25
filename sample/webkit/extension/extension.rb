require 'javascriptcore-gtk'

JavaScriptCore.patch_webkit2_web_extension

ext = WebKit2WebExtension.default

ext.init do |pg|
  ctx = pg.main_frame.javascript_global_context
  
  JavaScriptCore.execute_script(ctx, 'var foo={bar: 1};')
  
  go = ctx.get_global_object
  
  p go[:foo][:bar]
end

