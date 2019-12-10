export default (name) => {
  let icon;
  switch(name){
    case 'Log in':
      icon = 'Log in';
      break;
    case 'My Premises':
      icon = 'premises';
      break;
    case 'My Meters':
      icon = 'meters';
      break;
    case 'My Invoices':
      icon = 'invoices';
      break;
    case 'FAQs':
      icon = 'faq';
      break;
    case 'Moving Premises':
      icon = 'movingPremises';
      break;
    case 'xlsx':
      icon = 'xlsx';
      break;
    case 'csv':
      icon = 'csv';
      break;
    case 'pdf':
      icon = 'pdf';
      break;
    default:
      icon = '';
      break;
  }
  return icon;
}
