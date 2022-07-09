Jekyll::Hooks.register :pages, :pre_render do |page|
  page.content.gsub!(/!\[([^\]]*)\]\(\/?([^\)]+)\)/, '{% responsive_image path: \2 alt: "\1" %}')
end