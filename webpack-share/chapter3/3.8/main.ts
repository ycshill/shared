// 让 Angular2 正常运行需要的 polyfill
import 'core-js/es6/reflect';
import 'core-js/es7/reflect';
import 'zone.js/dist/zone';

// Angular2 框架核心模块
import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { platformBrowserDynamic } from '@angular/platform-browser-dynamic';

// 项目自定义视图组件
import { AppComponent } from './app.component';

@NgModule({
  // 该 NgModule 所依赖的视图组件
  declarations: [AppComponent],
  // 该 NgModule 所依赖的其它 NgModule
  imports: [BrowserModule],
  // 应用的根视图组件，只有根 NgModule 需要设置
  bootstrap: [AppComponent],
})

class AppModule {}

// 从 AppModule 启动应用
platformBrowserDynamic().bootstrapModule(AppModule);
