def sidebar_page_paths
  sidebar_config_path = "./turtlecoin-wiki/api/sidebar.yml"
  YAML.load(File.read(sidebar_config_path))["sidebar"]
end

Padrino::Helpers::RenderHelpers.class_eval do
  def wiki_partial(template_path, options = {}, &block)
    options = { locals: {}, layout: false }
    render(nil, "api/#{template_path}", options)
  end
end
