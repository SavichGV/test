// import { defineSupportCode } from 'cucumber';
const {defineSupportCode} = require('cucumber');

defineSupportCode(({ When }) => {

  When(/^click on the "(.+?)" button$/, (text) => {
    const input= $('.form-control');
    input.waitForExist (2000);
  //  browser.waitForExist('input=' + text, 2000)

  const inputb = $('#username')
    inputb.click({ x: 30 })
  //  browser.click('input=' + text)
  })
});

/*const { Given, Then, When }=require('cucumber');
When(/^click on the "(.+?)" button$/, (text) => {
  const input= $('.form-control');
  input.waitForExist (10000);
//  browser.waitForExist('input=' + text, 2000)

const inputb = $('#username')
  inputb.click({ x: 30 })
//  browser.click('input=' + text)
})*/
