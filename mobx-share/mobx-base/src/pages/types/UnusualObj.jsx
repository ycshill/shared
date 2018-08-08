import React, { Component } from 'react'
import { autorun, observable, extendObservable } from 'mobx';

class UnusualObj extends Component {

  componentDidMount() {
    
    // 将非普通的对象变为可观察的对象
    // function  Person(name, age) {
    //   this.name = name;
    //   this.age = age;
    // }
    // const person = observable.box(new Person('lily', 26));

    // autorun(() => {
    //   console.log(`name: ${person.get().name}, age: ${person.get().age}`);
    // });

    // // 改变属性
    // person.get().name = 'wanghong';
    // // 不会打印

    // // 改变引用
    // person.set(new Person('wanghong', 27));
    // //name: wanghong, age: 27

    // //将非普通对象的属性变为可观察的
    // function Person(name, age) {
    //   // 使用 extendObservable 在构造函数中创建可观察的属性
    //   extendObservable(this, {
    //     name: name,
    //     age: age,
    //   })
    // }

    // const person = new Person('extendlily', 28);

    // autorun(() => {
    //   console.log(`使用extendObservable创建可观察的属性--name:${person.name},age:${person.age}`);
    // });
    
    // // 改变对象的属性
    // person.name = '王宏';
    // // 使用extendObservable创建可观察的属性--name:王宏,age:28

    // 非常推荐的一种方式，使用 @observable 装饰器
    class Person {
      @observable name;
      @observable age;

      constructor(name, age) {
        this.name = name;
        this.age = age;
      }
    }

    const person = new Person('@lily', 20);

    autorun(() => {
      console.log(`使用装饰器修饰的--name:${person.name},age:${person.age}`);
    })

    // 改变可观察的属性
    person.name = 'wanghong';
    // 使用装饰器修饰的--name:wanghong,age:20
  }

  render () {
    return (
      <div>
        <h2>非普通对象</h2>
      </div>
    )
  }
}

export default UnusualObj