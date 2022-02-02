export default {
  title: 'views/Home/Desktop',
  parameters: {
    viewport: {
      defaultViewport: 'landscape'
    }
  }
}

import Normal from './Normal.elm';

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
