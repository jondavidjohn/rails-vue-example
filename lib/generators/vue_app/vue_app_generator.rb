# frozen_string_literal: true

class VueAppGenerator < Rails::Generators::NamedBase
  source_root File.expand_path("../templates", __FILE__)

  def create_pack_file
    template("pack.js.erb", "app/javascript/packs/#{name}.js")
  end

  def create_index_file
    template("index.vue.erb", "app/javascript/apps/#{name}/index.vue")
  end

  def create_test_file
    template("test.js.erb", "test/javascript/apps/#{name}/index.test.js")
  end

  def name
    super.gsub("_", "-")
  end
end
