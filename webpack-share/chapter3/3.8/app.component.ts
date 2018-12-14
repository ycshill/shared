import { Component } from '@angular/core';

// 通过注解的方式
@Component({
  // 标签名称
  selector: 'app-root',
  // HTML 模板
  template:  '<h1>{{msg}}</h1>',
  // css 样式
  styles: ['h1{ color: red; }']
})

export class AppComponent {
  msg = 'Hello, webpack';
}
