import React, { Component } from 'react';
import { observable, autorun, flow} from 'mobx';
import * as rest from '../../fetch/action-fetch';

class FlowAction extends Component {
  componentDidMount() {
    class Store {
      @observable students = [];
      @observable loadState = 'pending';

      fetchData = flow(function * () {  // 这是一个生成器函数
        this.students = [];
        this.loadState = 'pending';
        try {
          const response = yield rest.fetchActionData();  // 获取resolve 解析的值

          // 异步代码会被自动的包装成动作
          if (response.code === '0' && response.result) {
            this.students = [...response.result];
            this.state = 'done';
          }

        } catch (error) {
          this.state = 'error';
        }
      })
    }

    const store = new Store();

    autorun(() => {
      console.log(`store中的students: ${JSON.stringify(store.students)}`);
    })

    store.fetchData();
  }

  render () {
    return (
      <div>
        <h2>使用flow</h2>
        <p>这种方式是比较流行的写法</p>
      </div>
    )
  }
}

export default FlowAction;