require 'javascriptcore-gtk'

ctx = JavaScriptCore::GlobalContext.new(nil)

JavaScriptCore.execute_script(ctx,'var foo=1;')

go  = ctx.get_global_object

p go[:foo]
