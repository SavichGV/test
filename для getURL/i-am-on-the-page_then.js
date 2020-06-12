// import { defineSupportCode } from 'cucumber';
const {defineSupportCode} = require('cucumber');
const page = require('../services/helpers/getUrl');


defineSupportCode(({ Then }) => {

  Then(/^I am on the "(.+?)" page$/, (name) => {
    let page = getUrl(name);
    browser.waitUntil(() => {
      return browser.url().value.startsWith(page);
    }, 4000);
    expect(browser.url().value.startsWith(page)).to.be.true;
  })

});
/*const page = require('../services/helpers/getUrl');
const { Given, Then, When }=require('cucumber');
Then(/^I am on the "(.+?)" page$/, (name) => {
  let page = getUrl(name);
  browser.waitUntil(() => {
    return browser.url().value.startsWith(page);
  }, 10000);
  expect(browser.url().value.startsWith(page)).to.be.true;
})*/
