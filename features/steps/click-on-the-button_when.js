// import { defineSupportCode } from 'cucumber';
const {defineSupportCode} = require('cucumber');

defineSupportCode(({ When }) => {

  When(/^click on the "(.+?)" button$/, (text) => {
    const input= $('.form-control');
    input.waitForExist (2000);
  //  browser.waitForExist('input=' + text, 2000)

  const inputb = $('#kc-login')
    inputb.click()
    browser.pause(5000);
  //  browser.click('input=' + text)
  })
});
