require 'javascriptcore-gtk/webkit2gtk'

WebKit2WebExtension.config extension: File.join(File.dirname(__FILE__),'./extension/extension.rb')

wv = WebKit2Gtk::WebView.new
wv.execute('var foo = {bar: 1}; foo;') do |r,_|
  p r[:bar]
end

GLib::Timeout.add 5000 do
  Gtk.main_quit
end

Gtk.main
