import React, { Component } from 'react';
import { observer } from 'mobx-react';
import TodoItem from './TodoItem';

@observer
class TodoMain extends Component {

  render () {
    const { todoStore } = this.props;
    const { todoList } = todoStore;
    return (
      <div>
        <ul>{todoList.map((todo) => {
          return <li className="todo-item" key={todo.id}>
            <TodoItem todo={todo} />
            <span className="delete" onClick={e => todoStore.removeTodo(todo)}>X</span>
          </li>
        })}</ul>
      </div>
    )
  }
}

export default TodoMain;