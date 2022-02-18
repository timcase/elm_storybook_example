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
import  { init } from './_init.js';

export const normal = () => {
  return init(Normal.Elm.Story.Home.Normal);
};

export const loadingSlowly = () => {
  return init(LoadingSlowly.Elm.Story.Home.LoadingSlowly);
};

export const failed = () => {
  return init(Failed.Elm.Story.Home.Failed);
};
