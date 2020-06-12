// import { defineSupportCode } from 'cucumber';
const {defineSupportCode} = require('cucumber');

defineSupportCode(({ Then }) => {

  Then(/^message with text "(.+?)" occurs$/, (text) => {
    browser.waitForExist('body*=' + text, 2000)
    expect(browser.isExisting('body*=' + text)).to.be.true
  })

});
