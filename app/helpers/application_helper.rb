module ApplicationHelper
  def add_javascript_pack(*packs)
    @custom_packs ||= []
    @custom_packs += packs
  end

  def custom_packs
    @custom_packs || []
  end

  def vue_app(app, props = {})
    app_name = app.to_s.tr('_', '-')
    add_javascript_pack(app_name)
    options = {
      'vue-app': app_name,
      'v-cloak': true
    }

    props = props.stringify_keys.map do |key, val|
      ["data-#{key.tr('_', '-')}", val]
    end

    content_tag :div, Hash[props].merge(options) do
      content_tag :div, '', class: 'vue-loader'
    end
  end
end
