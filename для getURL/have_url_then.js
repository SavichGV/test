// import { defineSupportCode } from 'cucumber';
const {defineSupportCode} = require('cucumber');

defineSupportCode(({ Then }) => {

  Then(/^I have "(.+?)" url$/, (name) => {
      browser.url(name);
  })

});
/*const { Given, Then, When }=require('cucumber');
Then(/^I have "(.+?)" url$/, (name) => {
    browser.url(name);
})*/
