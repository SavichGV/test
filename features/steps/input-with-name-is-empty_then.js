// import { defineSupportCode } from 'cucumber';
const {defineSupportCode} = require('cucumber');

defineSupportCode(({ Then }) => {

  Then(/^input with name "(.+?)" is empty$/, (name) => {
    const inputId = browser.getAttribute('label=' + name, 'htmlFor');
    browser.waitUntil(() => {
      return browser.element('#' + inputId).getValue() === ''
    }, 2000);
    expect(browser.element('#' + inputId).getValue()).to.equal('');
  })

});
