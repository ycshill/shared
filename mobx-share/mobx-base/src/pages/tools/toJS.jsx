import React, { Component } from 'react';
import { observable, toJS } from 'mobx';

class ToJS extends Component {
  
  componentDidMount() {
    const person = observable({
      name: 'lily',
      age: 26,
    });
    console.log(`没有时候用toJS转化时候的对象--`, person);
    // 没有时候用toJS转化时候的对象-- Proxy {Symbol(mobx administration): ObservableObjectAdministration$$1}
    console.log(`通过toJS转化后的对象---`, toJS(person));
    // 通过toJS转化后的对象：{"name":"lily","age":26} 
  }

  render () {
    return (
      <div>
        <h2>toJS(value, options)</h2>
        <p>递归将一个（observable）对象转换为javascript结构</p>
      </div>
    )
  }
}

export default ToJS;