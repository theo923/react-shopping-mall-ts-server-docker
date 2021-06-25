import React from 'react'
import App from './App';
import Enzyme, { shallow, mount, render } from 'enzyme';
import Adapter from '@wojtekmaj/enzyme-adapter-react-17';

Enzyme.configure({ adapter: new Adapter() });

it('renders learn react link', () => {
  expect(shallow(<App />)).toMatchSnapshot();

});
