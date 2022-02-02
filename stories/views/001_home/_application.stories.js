export default { title: 'views/Home/Desktop' }

import Normal from './ApplicationNormal.elm';
import Blank from './ApplicationBlank.elm';
import ElementNormal from './ElementNormal.elm';

// window.addEventListener('popstate', function(event) {
//     event.stopImmediatePropagation();
// }, true);

// window.addEventListener('hashchange', function(event) {
//     event.stopImmediatePropagation();
// }, true);
window.addEventListener('popstate', (event) => {
  console.log('made it here');
});

export const normal = () => {
 const container = document.createElement('div');
 const elmContainer = document.createElement('div');
 container.appendChild(elmContainer);
 const app = Normal.Elm.Story.Home.init({
   node: elmContainer,
   flags: 5
 })
 return container;
};

export const blank = () => {
 const container = document.createElement('div');
 const elmContainer = document.createElement('div');
 container.appendChild(elmContainer);
 const app = Blank.Elm.Story.Home.init({
   node: elmContainer,
   flags: 5
 })
 return container;
};

// export const elementNormal = () => {
//  const container = document.createElement('div');
//  const elmContainer = document.createElement('div');
//  container.appendChild(elmContainer);
//  const app = ElementNormal.Elm.Story.Home.init({
//    node: elmContainer,
//    flags: 5
//  })
//  return container;
// };
