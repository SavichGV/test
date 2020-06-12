// import { defineSupportCode } from 'cucumber';
const {defineSupportCode} = require('cucumber');
//const page =  require('../services/helpers/getUrl');

defineSupportCode(({ Then }) => {
  Then(/^I am on the "(.+?)" page$/, () => {
   const header = $('.employees');
   //header.waitForExist (2000);
   expect(header.isExisting()).to.be.true;
  })
 //
 //
 //
 //  /*  let page = getUrl(name);
 //    browser.waitUntil(() => {
 //      return browser.url().value.startsWith(page);
 //    }, 4000);
 //    expect(browser.url().value.startsWith(page)).to.be.true;*/
 //  })

});
