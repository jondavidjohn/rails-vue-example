import { mount } from '@vue/test-utils'
import HelloVue from '@/apps/hello-vue'

describe('HelloVue', () => {
  it('should render', () => {
    const app = mount(HelloVue)
    expect(app).toMatchSnapshot()
  })
})
