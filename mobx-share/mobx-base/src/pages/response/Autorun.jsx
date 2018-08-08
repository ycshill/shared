import React, { Component } from 'react'
import { observable, computed, autorun } from 'mobx';

class Autorun extends Component {
  componentDidMount() {
    const number = observable([1,2,3]);
    const sum = computed(() => number.reduce((a, b) => a + b), 0);

    const disposer = autorun(() => {console.log(sum.get())});

    number.push(4);
    // 10

    // 清除副作用
    disposer();

    number.push(5);
    // 不执行
  }

  render () {
    return (
      <div>
        <h2>autorun</h2>
        <p>当观察数据变化时，返回一个disposer</p>
      </div>
    )
  }
}

export default Autorun