//import { defineSupportCode } from 'cucumber';
const {defineSupportCode} = require('cucumber');

defineSupportCode(({ When }) => {

  When(/^type to input with name "(.+?)" text "(.*)"$/, (name, text) => {
    //browser.pause(10000);
    const page= $('.login-pf');
    page.waitForExist (2000);
    //browser.waitForExist ('label=' + name, 2000);

  /*  const form = $('form')
    const attr = form.getAttribute('method')*/

    const label = $('label=' + name);
    const labelFor = label.getAttribute('for');
    const input = $('#'  + labelFor);
    input.setValue(text);



/*const label = label.getAttribute('label=' + name, 'htmlFor')

    const input = $('label=' + name, 'htmlFor');
  input.setValue('#' + input, text);





/*  const input = browser.getAttribute('label=' + name, 'htmlFor');
  browser.setValue('#' + input, text);
*/
  })

});
