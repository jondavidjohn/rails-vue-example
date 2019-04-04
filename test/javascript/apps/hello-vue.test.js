import { mount } from '@vue/test-utils'
import HelloVue from '@/apps/hello-vue'

describe('HelloVue', () => {
  it('should render', () => {
    const propsData = { title: "Hello Vue" }
    const app = mount(HelloVue, { propsData })
    expect(app).toMatchSnapshot()
  })
})
