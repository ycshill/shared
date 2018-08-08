import React, { Component } from 'react';
import { observable, action, autorun, computed, when } from "mobx";

class ActionBound extends Component {

  componentDidMount () {
    class Ticker{
      @observable tick = 0;

      @computed get ifDispose() {
        return this.tick >= 10;
      }

      // 使用@action.bound 绑定的this永远是正确的
      @action.bound
      // 使用action的话就不会增加，因为此时的this是window
      // @action
      increment() {
        this.tick ++;  
      }
      
    }

    const ticker = new Ticker();

    const disposer = autorun(() => {console.log(`tick: ${ticker.tick}`)})

    when(
      () => ticker.ifDispose,
      () => disposer(),
    )
    
    setInterval(ticker.increment, 1000)
  }
  
  render () {
    return (
      <div>
        <h2>action 和 action.bound 的区别</h2>
      </div>
    )
  }
}

export default ActionBound;