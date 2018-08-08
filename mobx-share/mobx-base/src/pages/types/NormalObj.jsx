import React, { Component } from 'react';
import { observable, autorun, extendObservable } from 'mobx';

class NormalObj extends Component {

  componentDidMount() {
    const person = observable({
      name: 'lily',
      age: 26,
      address: {
        province: '天津',
      }
    });

    console.log('打印经过observable修饰后的对象---', person);

    // 默认第一次会执行一次
    autorun(() => {
      console.log(`name: ${person.name}-- age:${person.age}--address:${JSON.stringify(person.address)}--obj:${person.obj}--extendObj:${person.extendObj}`);
    });

    // 改变name的值
    person.name = '石丽丽';

    // 改变 address 的province的值, 说明会递归遍历整个对，即使属性还是个对象；
    person.address.province = '北京';

    // 新增的属性是不可以被观察的，可以使用 extendObservable
    person.obj = "web developer";
    // 没有打印的结果

    // 使用 extendObservable
    extendObservable(person, {
      extendObj: 'extend web developer'
    })

  }


  render() {
    return (
      <div>
        <h2>普通的对象&非普通对象</h2>
      </div>
    )
  }
}

export default NormalObj