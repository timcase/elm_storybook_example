import '../styles/tailwind.css';

const customViewports = {
  mobile: {
    name: 'mobile',
    styles: {
      width: '375px',
      height: '667px',
    },
  },
  portrait: {
    name: 'portrait',
    styles: {
      width: '768px',
      height: '1024px',
    },
  },
  landscape: {
    name: 'landscape',
    styles: {
      width: '1024px',
      height: '768px',
    },
  }
};

export const parameters = {
  actions: { argTypesRegex: "^on[A-Z].*" },
  controls: {
    matchers: {
      color: /(background|color)$/i,
      date: /Date$/,
    },
  },
  viewport: {
    viewports: customViewports
  }
}