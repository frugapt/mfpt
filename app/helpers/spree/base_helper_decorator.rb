Spree::BaseHelper.module_eval do
  def logo(image_path=Spree::Config[:logo])
    image_tag(image_path, { class: "img-responsive", alt: "Fruga Portugal" })
  end
  def body_class
    @body_class ||= content_for?(:sidebar) ? '' : ''
    @body_class
  end

  # human readable list of variant options
  def fenix_variant_options(v, options={})
    values = v.option_values.sort do |a, b|
      a.option_type.position <=> b.option_type.position
    end
    values.to_a.map! do |ov|
      "#{ov.presentation}"
    end
    values.to_sentence({ words_connector: ", ", two_words_connector: ", " })
  end

  # human readable list of product options
  def fenix_product_options_types(p)
    values=p.option_types.to_a.map! do |ot|
      "#{ot.presentation}"
    end
    values.to_sentence({ words_connector: ", ", two_words_connector: ", " })
  end

end
