import React, { Component } from 'react'
import { observable, computed, autorun } from 'mobx';

class Computed extends Component {
  componentDidMount() {
    class Squared{
      @observable length = 2;

      constructor(length) {
        this.length = length;
      }

      @computed get squared() {
        return this.length * this.length;
      }
    }

    const square = new Squared(2);

    // 改变长度
    square.length = 3;
    // Squared的面积：9
    
    autorun(() => {
      console.log(`Squared的面积：${square.squared}`)
    });
  }

  render () {
    return (
      <div>
        <h2>computed values</h2>
        <p>使用计算值可以根据现有的状态或其他计算衍生出的值</p>
      </div>
    )
  }
}

export default Computed;