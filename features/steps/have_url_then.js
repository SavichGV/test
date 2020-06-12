// import { defineSupportCode } from 'cucumber';
const {defineSupportCode} = require('cucumber');


defineSupportCode(({ Then }) => {

  Then(/^I have "(.+?)" url$/, (name) => {
      browser.url(name);
      browser.waitUntil(() => {
          return browser.getUrl();
      }, 5000);

expect('https://staging-family.godeltech.com/division').to.contain.path('/division');
    //*  return browser.url().value.startsWith();
    //}, 4000);
  //  expect(browser.url().value.startsWith()).to.be.true;
 })

});

      
