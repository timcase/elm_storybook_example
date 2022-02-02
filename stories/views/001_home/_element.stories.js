export default { title: 'views/Home/Desktop' }

import ElementNormal from './ElementNormal.elm';
import ElementBlank from './ElementBlank.elm';

// window.addEventListener('popstate', function(event) {
//     event.stopImmediatePropagation();
// }, true);

// window.addEventListener('hashchange', function(event) {
//     event.stopImmediatePropagation();
// }, true);
// window.addEventListener('popstate', (event) => {
//   console.log('made it here');
// });


export const elementNormal = () => {
 const container = document.createElement('div');
 const elmContainer = document.createElement('div');
 container.appendChild(elmContainer);
 const app = ElementNormal.Elm.Story.Home.init({
   node: elmContainer,
   flags: 5
 })
 return container;
};

export const elementBlank = () => {
 const container = document.createElement('div');
 const elmContainer = document.createElement('div');
 container.appendChild(elmContainer);
 const app = ElementBlank.Elm.Story.Home.init({
   node: elmContainer,
   flags: 5
 })
 return container;
};
