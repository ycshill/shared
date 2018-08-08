import React, { Component } from 'react';
import { observable, autorun, action, runInAction } from 'mobx';
import * as rest from '../../fetch/action-fetch.js';

class RunInAction extends Component {

  componentDidMount() {
    class Store {
      @observable students = [];
      @observable loadState = 'pending';

      @action
      fetchData() {
        this.students = [];
        this.loadState = 'pending';
        rest.fetchActionData({}).then(
          response => {
            if (response.code === '0' && response.result) {
              //  将最终的修改放在一个异步的操作中
              runInAction(() => {
                this.students = [...response.result];
                this.loadState = 'done';
              })
            }
          },
          error => {
            runInAction(() => {
              this.loadState = 'error';
            })
          }
        )
      }
    }

    const store = new Store();

    autorun(() => {
      console.log(`store中的students: ${JSON.stringify(store.students)}`);
    })

    store.fetchData();
  }

  render() {
    return (
      <div>
        <h2>使用runInAction的工具函数</h2>
        <p>使用runInAction的工具函数，对 AsyncActions 中的异步动作进行改版</p>
      </div>
    )
  }
}

export default RunInAction;