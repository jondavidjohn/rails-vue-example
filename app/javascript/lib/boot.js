import Vue from 'vue'

export default function (name, app) {
  const nodes = document.querySelectorAll(`[vue-app=${name}]`)
  if (!nodes.length) return

  const App = Vue.extend(app)

  return Array.prototype.map.call(nodes, (node) => {
    const propsData = {}
    Object.entries(node.dataset).forEach(([key, value]) => {
      try {
        propsData[key] = JSON.parse(value)
      } catch (e) {
        propsData[key] = value
      }
    })

    return new App({ propsData }).$mount(node)
  })
}
