// import { defineSupportCode } from 'cucumber';
const {defineSupportCode} = require('cucumber');
import moment from 'moment';

defineSupportCode(({ Then }) => {

  Then(/^input with name "(.+?)" has text "(.+?)"$/, (name, text) => {
    if(text === 'today'){
      text = moment().format('DD-MM-YYYY');
    }
    const inputId = browser.getAttribute('label=' + name, 'htmlFor');
    browser.waitUntil(() => {
      return browser.element('#' + inputId).getValue() === text
    }, 2000);
    expect(browser.element('#' + inputId).getValue()).to.equal(text);
  })

});
