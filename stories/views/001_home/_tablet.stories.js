export default {
  title: 'views/Home/Tablet',
  parameters: {
    viewport: {
      defaultViewport: 'tablet'
    }
  }
}

import { initElmStory } from '../../initElmStory.js';
import Home from './Home.elm';

export const normal = () => {
  return initElmStory(Home.Elm.Story.Home, 'normal');
}

export const loading = () => {
  return initElmStory(Home.Elm.Story.Home, 'loading');
}

export const error = () => {
  return initElmStory(Home.Elm.Story.Home, 'error');
}
