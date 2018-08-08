import { observable, action } from 'mobx';

class TodoModel {
  id = Math.random();
  @observable title = '';  // 输入的内容
  @observable finished = false;  // 是否完成

  constructor(title) {
    this.title = title;
  }
  
  @action.bound toggle() {
    this.finished = !this.finished;
  }
}

export default TodoModel;