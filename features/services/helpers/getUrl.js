module.exports = page => {
    let result = browser.options.baseUrl;
    switch(page){
    case 'Sign in':
      result = 'https://staging-family.godeltech.com/division';
      break;
    case 'Division':
      result = 'https://staging-family.godeltech.com/division';
      break;
    default:
      break;
  }
  return result;
}
