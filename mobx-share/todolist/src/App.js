import React, { Component } from 'react';
import { Provider } from 'mobx-react';
import TodoList from './pages/todoList/TodoList';
import stores from './mobx/stores/index';

class App extends Component {

  //使用Mobx的调试工具
  renderDevTool() {
    // 在开发环境下，添加调试工具；
    if (process.env.NODE_ENV !== 'production') {
      const DevTools = require('mobx-react-devtools').default;
      return <DevTools />;
    }
  }

  render() {
    return (
      <div style={{marginTop: 100}}>
        <Provider {...stores}>
          <TodoList />
        </Provider>
        {this.renderDevTool()}
      </div>
      
    );
  }
}

export default App;
