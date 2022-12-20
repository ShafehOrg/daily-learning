import React from 'react';

import { Logo } from '../frontend/components/logo';

export default {
  title: 'Example/Logo',
  component: Logo,
};

const Template = (args) => <Logo {...args} />;

export const Primary = Template.bind({});
Primary.args = {
  size: 'medium',
  alt: 'Logo Medium',
};

export const Large = Template.bind({});
Large.args = {
  size: 'large',
  alt: 'Logo Large',
};

export const Small = Template.bind({});
Small.args = {
  size: 'small',
  alt: 'Logo Small',
};
