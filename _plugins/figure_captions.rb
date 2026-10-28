# An image followed by a line that is entirely italic becomes a captioned
# figure, so writers can add captions from the Pages CMS editor:
#
#   ![](/assets/images/foo.jpg)
#
#   *Πηγή: Wikipedia*
module EnThraxei
  FIGURE_CAPTION = %r{<p>(<img\b[^>]*>)(?:</p>\s*<p>|\s*(?:<br\s*/?>)?\s*)<em>((?:(?!</?em\b).)*)</em></p>}m

  Jekyll::Hooks.register :posts, :post_convert do |post|
    post.content = post.content.gsub(FIGURE_CAPTION) do
      "<figure>#{Regexp.last_match(1)}<figcaption>#{Regexp.last_match(2)}</figcaption></figure>"
    end
  end
end
