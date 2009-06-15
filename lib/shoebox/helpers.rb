module Shoebox::Helpers

  def shoebox_scripts
    src  = "/shoebox/scripts/#{controller.controller_name}.js"
    src << "?#{Time.now.to_i}" if Rails.env.development?
    tag 'script', { :type => 'text/javascript', :src => src  }, true
  end

  def shoebox_styles(media = :screen)
    href  = "/shoebox/styles/#{controller.controller_name}/#{media}.css"
    href << "?#{Time.now.to_i}" if Rails.env.development?
    tag 'link', { :rel => 'stylesheet', :href => href, :media => media }
  end
  
end