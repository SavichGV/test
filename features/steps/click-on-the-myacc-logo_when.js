// import { defineSupportCode } from 'cucumber';
const {defineSupportCode} = require('cucumber');

defineSupportCode(({ When }) => {

  When(/^click on the MyAccount logo$/, () => {
        browser.waitForExist('.menu__logo')
        browser.click('.menu__logo')
  })
});
