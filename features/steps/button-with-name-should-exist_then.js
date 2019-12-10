// import { defineSupportCode } from 'cucumber';
const {defineSupportCode} = require('cucumber');
defineSupportCode(({ Then }) => {

  Then(/^button with name "(.+?)" should exist$/, (name) => {
    browser.waitForExist('.Button=' + name, 2000);
    expect(browser.isExisting('.Button=' + name)).to.be.true;
  })

});
