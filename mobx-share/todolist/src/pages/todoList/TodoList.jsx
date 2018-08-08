/**
 * TodoList.jsx
 */

import React, { Component } from 'react';
import { observer, inject } from 'mobx-react';
import TodoFilterForm from './TodoFilterForm';
import TodoMain from './TodoMain';
import TodoFilter from './TodoFilter';
import '../../styles/todoList.css';

// Provider 配合 inject 引入 state
// 无论有多少修饰器，@observer 永远在第一个
@observer 
@inject('todoStore')
class TodoList extends Component {
 
  render () {
    const { todoStore } = this.props;
    return (
      <div className="todo-list">
        <TodoFilterForm todoStore = {todoStore}/>
        <TodoMain todoStore = {todoStore}/>
        <TodoFilter todoStore = {todoStore}/>
      </div>
    )
  }
}

export default TodoList;