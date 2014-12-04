# -*- encoding : utf-8 -*-
require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module HappyGiftWeb
  class Application < Rails::Application
    config.autoload_paths += %W(#{config.root}/app/models/ckeditor)
  end
end
