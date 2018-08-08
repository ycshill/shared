import { observable, computed, action } from 'mobx';
import TodoModel from '../models/TodoModel';

class TodoStore {
  
  // todo 列表
  @observable todoList = [];

  // 已经完成的
  @computed get unfinishedLen() {
    return this.todoList.filter((todo) => !todo.finished).length;
  }

  // 增加
  @action.bound createTodo(title) {
    this.todoList.unshift(new TodoModel(title));
  }

  // 删除
  @action.bound removeTodo(todo) {
    this.todoList.remove(todo);  // mobx 提供的快速删除
  }
}

export default TodoStore;