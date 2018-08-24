import React from 'react';

const UserBar = ({ logined }) => (
  logined ? <Avatar /> : <PreLogin />
);

const Avatar = () => (
  <div>
    <img src="" alt="" />
    <div className="go-write-btn">写文章</div>
  </div>
);

const PreLogin = () => (
  <div>
    <div>登录</div>
    <div>注册</div>
  </div>
);

export default UserBar;
