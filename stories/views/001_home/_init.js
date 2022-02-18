export const init = (elmApp) => {
  const body = document.querySelector('body')
  const originalCopy = body.cloneNode(true);
  const app = elmApp.init();
  const withElmCopy = body.cloneNode(true);
  body.parentNode.replaceChild(originalCopy, body);
  const rootDiv = document.querySelector('#root');
  rootDiv.innerHTML = '';
  rootDiv.appendChild(withElmCopy);
  return document.createElement('div');
};
