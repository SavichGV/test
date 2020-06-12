import { defineSupportCode } from 'cucumber';

defineSupportCode(({ When }) => {

  When(/^type to input with name "(.+?)" text "(.*)"$/, (name, text) => {
    browser.waitForExist('label=' + name, 2000);

    const input = browser.getAttribute('label=' + name, 'htmlFor');
    browser.setValue('#' + input, text);
  })

});
