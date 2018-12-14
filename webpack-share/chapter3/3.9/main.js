import React, { Component } from 'reat';
import { render } from 'react-dom';
import './main.css';

class Button extends Component {
  render() {
    return <h1>hello, webpack</h1>
  }
}

render(<Button />, window.document.getElementById('app'));
