import React, { Component } from 'react'
import { observable, reaction, autorun } from 'mobx';

class Reaction extends Component {
  componentDidMount() {
    const todos = observable([
      {
        title: 'Java',
        done: true,
      },
      {
        title: 'javascript',
        done: false,
      }
    ]);

    // 对 length 做出反应
    const resLen = reaction(
      () => todos.length,
      length => console.log(`对长度做出反应：${todos.map(todo => todo.title).join(',')}`)
    )

    // 对 length 和 title 的变化作出反应
    const resTitle = reaction(
      () => todos.map(todo => todo.title),
      titles => console.log(`对标题做出反应：${titles.join(',')}`)
    );

    // autorun 对任何可观察数据做出反应
    const resAll = autorun(
      () => console.log(`autorun 对任何的变化做出反应: ${todos.map(todo => todo.title).join(',')}`)
    )

    // 改变todos的长度
    todos.push({
      title: 'C++',
      done: false,
    });
    /**
     * 对长度做出反应：Java,javascript,C++
     * Reaction.jsx:26 对标题做出反应：Java,javascript,C++
     * Reaction.jsx:31 autorun 对任何的变化做出反应: Java,javascript,C++ 
     * */

     // 改变 title
     todos[0].title = 'Make tea';
     /**
      * 对标题做出反应：Make tea,javascript,C++
      * Reaction.jsx:31 autorun 对任何的变化做出反应: Make tea,javascript,C++ 
      * */

  }

  render () {
    return (
      <div>
        <h2>reaction</h2>
        <p>确定副作用和可观察数据的</p>
      </div>
    )
  }
}

export default Reaction;