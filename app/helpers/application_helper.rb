module ApplicationHelper
  def vue_app(app, props = {})
    app_name = app.to_s.dasherize
    add_javascript_pack(app_name)

    props = props.stringify_keys.map do |key, val|
      ["data-#{key.dasherize}", val.to_json]
    end

    content_tag :div, nil, Hash[props].merge({
      'vue-app': app_name
    })
  end

  def add_javascript_pack(*packs)
    @custom_packs ||= Set.new
    @custom_packs += packs
  end

  def custom_packs
    @custom_packs || []
  end
end
