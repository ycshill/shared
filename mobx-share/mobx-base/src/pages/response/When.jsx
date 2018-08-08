import React, { Component } from 'react'
import { observable, computed, when } from 'mobx';

class When extends Component {
  componentDidMount() {
    class showDetail{
      @observable first = 2;
      @observable second = 3;

      @computed get isVisible() {
        return (this.first * this.second) > 10
      }
      
      constructor() {
        when(
          () => this.isVisible,
          () => this.dispose(),
        )
      }

      dispose() {
        console.log('这里做清理工作');
      }
    }

    const demo = new showDetail();
    demo.second = 10;
    // 这里做清理工作
  }

  render () {
    return (
      <div>
        <h2>when</h2>
        <p>当第一个条件成立的时候，才执行第二个条件</p>
      </div>
    )
  }
}

export default When;