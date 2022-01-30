export default { title: 'Counters' }

import CountersStory from '../src/Counters.elm';

export const elm = () => {
 const container = document.createElement('div');
 const elmContainer = document.createElement('div');
 container.appendChild(elmContainer);
 const app = CountersStory.Elm.Counters.init({
   node: elmContainer,
   flags: 5
 })
 return container;
};
