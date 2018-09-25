require "rubygems"
require "ffi"

require File.join(File.dirname(__FILE__),'JavaScriptCore','monkey','monkey')

module JavaScriptCore
  require File.join(File.dirname(__FILE__),'JavaScriptCore','ffi','lib')
  require File.join(File.dirname(__FILE__),'JavaScriptCore','Object')
  require File.join(File.dirname(__FILE__),'JavaScriptCore','Value')
  require File.join(File.dirname(__FILE__),'JavaScriptCore','Context')
  require File.join(File.dirname(__FILE__),'JavaScriptCore','GlobalContext')
  require File.join(File.dirname(__FILE__),'JavaScriptCore','ContextGroup')
  require File.join(File.dirname(__FILE__),'JavaScriptCore','Value')
  require File.join(File.dirname(__FILE__),'JavaScriptCore','String')
  require File.join(File.dirname(__FILE__),'JavaScriptCore','PropertyNameArray')
  require File.join(File.dirname(__FILE__),'JavaScriptCore','js_hard_code')
  require File.join(File.dirname(__FILE__),'JavaScriptCore','js_class_definition')
  require File.join(File.dirname(__FILE__),'JavaScriptCore','ruby_object')
end
