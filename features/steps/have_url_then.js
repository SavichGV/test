// import { defineSupportCode } from 'cucumber';
const {defineSupportCode} = require('cucumber');

defineSupportCode(({ Then }) => {

  Then(/^I have "(.+?)" url$/, (name) => {
      browser.url(name);
  })

});
