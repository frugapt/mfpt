Premailer::Rails.config.merge!(
  adapter: :nokogiri, 
  remove_comments: true, 
  preserve_styles: false, 
  preserve_reset: true, 
  remove_ids: true)