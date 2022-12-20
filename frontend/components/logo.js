import React from 'react';
import PropTypes from 'prop-types';
import './logo.css';
import Image from '../assets/logo.jpg';

/**
 * Primary UI component for the app logo
 */
export const Logo = ({ size, alt, ...props }) => {
  return (
    <img
      src={Image}
      alt={alt}
      className={['storybook-logo', `storybook-logo--${size}`].join(' ')}
      {...props}
    />
  );
};

Logo.propTypes = {
  /**
   * How large should the logo be?
   */
  size: PropTypes.oneOf(['small', 'medium', 'large']),
  /**
   * Optional click handler
   */
  onClick: PropTypes.func,
  /**
   * Optional alt text
   * @default 'Logo'
   */
  alt: PropTypes.string,
};

Logo.defaultProps = {
  size: 'small',
  onClick: undefined,
  alt: 'Logo',
};
