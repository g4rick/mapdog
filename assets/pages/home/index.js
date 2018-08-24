import ReactDOM from 'react-dom';
import React from 'react';
import UserBar from './UserBar';

const Main = () => (
  <article>
    <UserBar />
    <header>不知道用来干啥练手 就写个博客功能吧 ：）</header>
    <ul>
      <li>用户管理</li>
      <li>写文章</li>
      <li>展示文章</li>
      <li>首页就用来展示吧 先</li>
    </ul>
  </article>
);

ReactDOM.render(
  <Main />,
  document.getElementById('app')
);
