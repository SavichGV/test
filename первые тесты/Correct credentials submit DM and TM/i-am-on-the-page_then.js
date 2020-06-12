import { defineSupportCode } from 'cucumber';
import getUrl from '../services/helpers/getUrl';

defineSupportCode(({ Then }) => {

  Then(/^I am on the "(.+?)" page$/, (name) => {
    let page = getUrl(name);
    browser.waitUntil(() => {
      return browser.url().value.startsWith(page);
    }, 4000);
    expect(browser.url().value.startsWith(page)).to.be.true;
  })

});
