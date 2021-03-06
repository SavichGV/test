// import { defineSupportCode } from 'cucumber';
const {defineSupportCode} = require('cucumber');
//const {page} =  require('../services/helpers/getUrl');

defineSupportCode(({ Given }) => {

  Given(/^I am on the "(.+?)" page$/, (name) => {
    let page = getUrl(name);
    browser.waitUntil(() => {
      return browser.url().value.startsWith(page);
    }, 4000);
    expect(browser.url().value.startsWith(page)).to.be.true;
  })

});
