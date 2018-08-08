import React, { Component } from 'react';
import * as rest from '../../fetch/action-fetch';
import { observable, action, autorun } from 'mobx';

class AsyncActions extends Component {
  
  componentDidMount() {
    class Store {
      @observable students = [];
      @observable loadState = 'pending';

      @action
      fetchData() {
        this.students = [];
        this.loadState = 'pending';
        rest.fetchActionData({}).then(
          // 内联创建动作
          action('fetchSuccess', response => {
            if (response.code === '0' && response.result) {
              this.students = [...response.result];
              this.state = 'done';
            }
          }),
          action('fetchError', error => {
            this.state = 'error';
          })
        )

      }
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
        <h2>异步Actions(动作)</h2>
      </div>
    )
  }
}

export default AsyncActions;