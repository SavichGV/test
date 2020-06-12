import { defineSupportCode } from 'cucumber';

defineSupportCode(({ When }) => {

  When(/^click on the "(.+?)" (button|text|question)$/, (text, type) => {

    switch(type){
      case 'button':
        if(text === 'x'){
          return 'pending'
        }
        browser.waitForExist('.Button=' + text, 2000)
        browser.click('.Button=' + text)
      break;
      case 'text':
        browser.waitForExist('div=' + text, 2000)
        browser.click('div=' + text)
      break;
      case 'question':
        browser.waitForExist('li*=' + text, 2000)
        browser.click('li*=' + text)
      break;
      default:
      break;
    }
  })

});
