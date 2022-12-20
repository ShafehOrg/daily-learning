import React from 'react';
import PropTypes from 'prop-types';

import { Logo } from './logo';
import Session from './session';
import './header.css';

export const Header = () => (
    <header>
        <div>
            <Logo />
            <h1>Shafeh</h1>
        </div>
        <div>
            <Session />
        </div>
    </header>
);


