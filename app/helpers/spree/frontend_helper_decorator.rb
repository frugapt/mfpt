Spree::FrontendHelper.module_eval do

  def link_to_cart(text = nil)
    text = text ? h(text) : Spree.t('cart')
    css_class = nil

    if simple_current_order.nil? or simple_current_order.item_count.zero?
      text = fa_icon("shopping-cart", text: " (#{Spree.t('empty')})",class: "img-thumbnail") 
      css_class = 'empty'
    else
      text = fa_icon("shopping-cart", text: " (#{simple_current_order.item_count})  <span class='amount'>#{simple_current_order.display_total.to_html}</span>", class: "img-thumbnail") 
      css_class = 'full'
    end

    link_to text.html_safe, spree.cart_path, class: "cart-info #{css_class}"
  end
  
end
