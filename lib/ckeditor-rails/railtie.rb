module Ckeditor
  module Rails
    class Railtie < ::Rails::Railtie
      initializer 'ckeditor.assets.precompile', group: :all do |app|
        app.config.assets.precompile += Ckeditor::Rails::Asset.new.files
      end
    end
  end
end
