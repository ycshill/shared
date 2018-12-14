function show(content) {
  window.document.getElementById('app').innerText = 'hello3 ' + content;
}

// 通过CommonJs 规范导出模块 show函数
module.exports = show;
