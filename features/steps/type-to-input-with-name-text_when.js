//import { defineSupportCode } from 'cucumber';
const {defineSupportCode} = require('cucumber');

defineSupportCode(({ When }) => {

  When(/^type to input with name "(.+?)" text "(.*)"$/, (name, text) => {
    //browser.pause(10000);
    const label= $('.login-pf');
    label.waitForExist (2000);
    //browser.waitForExist ('label=' + name, 2000);

    const form = $('form')
    const attr = form.getAttribute('method')

    const input = $('input');
        input.setValue('#' + input, text);

  //  const input = browser.getAttribute('label=' + name, 'htmlFor');
  //  browser.setValue('#' + input, text);
  })

});
