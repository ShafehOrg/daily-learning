import React from 'react';
import { Router } from 'react-router-dom';

import { Session } from '../frontend/components/session';

export default {
    title: 'Example/Session',
    component: Session,
};

const Template = (args) => <Router> <Session {...args} /></Router>;

export const LoggedIn = Template.bind({});
LoggedIn.args = {
    loggedIn: true,
};

export const LoggedOut = Template.bind({});
LoggedOut.args = {
    loggedIn: false,
};
