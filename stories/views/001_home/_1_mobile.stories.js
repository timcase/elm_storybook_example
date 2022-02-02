export default {
  title: 'views/Home/Mobile',
  parameters: {
    viewport: {
      defaultViewport: 'mobile'
    }
  }
}

import LoadingSlowly from './LoadingSlowly.elm';
import Normal from './Normal.elm';
import Failed from './Failed.elm';

export const normal = () => {
 const app = Normal.Elm.Story.Home.Normal.init();
 return document.createElement('div');
};

export const loadingSlowly = () => {
 const app = LoadingSlowly.Elm.Story.Home.LoadingSlowly.init();
 return document.createElement('div');
};

export const failed = () => {
 const app = Failed.Elm.Story.Home.Failed.init();
 return document.createElement('div');
};
