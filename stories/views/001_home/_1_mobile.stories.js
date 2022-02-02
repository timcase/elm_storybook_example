export default {
  title: 'views/Home/Mobile',
  parameters: {
    viewport: {
      defaultViewport: 'mobile'
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