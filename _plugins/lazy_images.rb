# Post images load lazily; posts open with text, so none is the LCP element.
module EnThraxei
  Jekyll::Hooks.register :posts, :post_convert do |post|
    post.content = post.content.gsub(/<img\b(?![^>]*\bloading=)/, '<img loading="lazy" decoding="async"')
  end
end
