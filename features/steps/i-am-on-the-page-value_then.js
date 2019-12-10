// import { defineSupportCode } from 'cucumber';
const {defineSupportCode} = require('cucumber');
import getUrl from '../services/helpers/getUrl';

defineSupportCode(({ Then }) => {

  Then(/^I am on the "(.+?)" page with id "(.+?)"$/, (name, value) => {
    let page = getUrl(name) + '/' + value;
    browser.waitUntil(() => {
      return browser.url().value === page;
    }, 2000);
    expect(browser.url().value).to.equal(page);
  })

});
