import React, { Component } from 'react';
import {observable} from 'mobx';

class OriginalData extends Component {
  componentDidMount() {
    const cityName = observable.box('Vienna');

    console.log(cityName.get());  // Vienna
  }

  render () {
    return (
      <div>
        <h2>原始数据类型</h2>
      </div>
    )
  }
}

export default OriginalData;