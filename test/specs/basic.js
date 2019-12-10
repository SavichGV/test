const assert = require('assert')

describe('webdriver.io page', () => {
    it('should have the right title', () => {
        browser.url('https://staging-family.godeltech.com/division')
        const title = browser.getTitle()
        assert.strictEqual(title, 'Log in')
    })
})
