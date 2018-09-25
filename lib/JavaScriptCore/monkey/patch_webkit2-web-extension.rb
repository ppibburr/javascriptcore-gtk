WebKit2WebExtension::WebPage;
require File.expand_path(File.join(File.dirname(__FILE__), "patch_gobject"))

module WebKit2WebExtension
  module FFILib
    extend FFI::Library
    
    ffi_lib "webkit2gtk-4.0"
    
    attach_function :webkit_frame_get_javascript_global_context, [:pointer], :pointer
  end
  
  class WebFrame
    def javascript_global_context
      ptr = FFILib.webkit_frame_get_javascript_global_context to_ffi
      o = JavaScriptCore::GlobalContext.new pointer: ptr
      p ptr,o
      o
    end;
  
    def execute s, &b    
      res = nil
      
      run_javascript(s) do |_,r|
        jr  = run_javascript_finish(r)
        res = jr.value.to_ruby
        yield(res, jr, jr.global_context) if block_given?
      end
    end
  end
end
