// import { defineSupportCode } from 'cucumber';
const {defineSupportCode} = require('cucumber');

defineSupportCode(({ Given }) => {

  Given(/^Open "(.+?)" url$/, (name) => {
      browser.reloadSession();
      browser.url(name);
  })

});
