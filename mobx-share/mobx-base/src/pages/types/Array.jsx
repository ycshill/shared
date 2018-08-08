import React, { Component } from 'react';
import { observable, autorun, isArrayLike } from 'mobx';

class Array extends Component {
  componentDidMount() {
    const arr = observable([1,2,3]);
    console.log(`用observable修饰的数组`, arr);

    autorun(() => {console.log(`arr--, ${arr}`)})
    // 判断是不是一个数组
    arr.push(4);
    // arr--, 1,2,3,4
  }

  render () {
    return (
      <div>
        <h2>数组</h2>
      </div>
    )
  }
}

export default Array;