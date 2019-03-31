module ApplicationHelper
  def add_javascript_pack(*packs)
    @custom_packs ||= []
    @custom_packs += packs
  end

  def custom_packs
    @custom_packs || []
  end

  def vue_app(app, props = {})
    app_name = app.to_s.dasherize
    add_javascript_pack(app_name)
    options = {
      'vue-app': app_name,
      'v-cloak': true
    }

    props = props.stringify_keys.map do |key, val|
      ["data-#{key.dasherize}", val.to_json]
    end

    content_tag :div, Hash[props].merge(options)
  end
end
