import TodoStore from './TodoStore';

const todoStore = new TodoStore();

// 如果有多个的时候可以合并store，这里为了讲解，假设有多个
const stores = {
  todoStore,
}

export default stores;