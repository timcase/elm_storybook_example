export default { title: 'views/Home/Desktop' }

import LoadingSlowly from './LoadingSlowly.elm';
import Normal from './Normal.elm';
import Failed from './Failed.elm';

export const normal = () => {
  const body = document.querySelector('body')
  const originalCopy = body.cloneNode(true);
  const app = Normal.Elm.Story.Home.Normal.init();
  const withElmCopy = body.cloneNode(true);
  body.parentNode.replaceChild(originalCopy, body);
  const rootDiv = document.querySelector('#root');
  rootDiv.innerHTML = '';
  rootDiv.appendChild(withElmCopy);
  return document.createElement('div');
};

export const loadingSlowly = () => {
  const body = document.querySelector('body')
  const originalCopy = body.cloneNode(true);
  const app = LoadingSlowly.Elm.Story.Home.LoadingSlowly.init();
  const withElmCopy = body.cloneNode(true);
  body.parentNode.replaceChild(originalCopy, body);
  const rootDiv = document.querySelector('#root');
  rootDiv.innerHTML = '';
  rootDiv.appendChild(withElmCopy);
  return document.createElement('div');
};

export const failed = () => {
  const body = document.querySelector('body')
  const originalCopy = body.cloneNode(true);
  const app = Failed.Elm.Story.Home.Failed.init();
  const withElmCopy = body.cloneNode(true);
  body.parentNode.replaceChild(originalCopy, body);
  const rootDiv = document.querySelector('#root');
  rootDiv.innerHTML = '';
  rootDiv.appendChild(withElmCopy);
  return document.createElement('div');
};
