<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<!-- 侧边栏 -->
<aside class="main-sidebar" style="position: fixed">
  <section class="sidebar">
    <ul class="sidebar-menu">
      <div class="user-panel">
        <div class="pull-left image">
          <img src="https://cdnjs.cloudflare.com/ajax/libs/admin-lte/2.4.8/img/user2-160x160.jpg" class="img-circle"
               alt="User Image">
        </div>
        <div class="pull-left info">
        <p>public</p>
          <a href="#"><i class="fa fa-circle text-success"></i>管理员</a>
        </div>
      </div>
      <li class="header">MAIN NAVIGATION</li>
      <shiro:hasPermission name="index:index">
        <li>
          <a href="/admin/index">
            <i class="fa fa-dashboard"></i>
            <span>仪表盘</span>
          </a>
        </li>
      </shiro:hasPermission>
      <shiro:hasPermission name="topic:list">
        <li>
          <a href="/admin/topic/list">
            <i class="fa fa-list"></i>
            <span>话题</span>
          </a>
        </li>
      </shiro:hasPermission>
      <shiro:hasPermission name="reply:list">
        <li>
          <a href="/admin/comment/list">
            <i class="fa fa-comment"></i>
            <span>评论</span>
          </a>
        </li>
      </shiro:hasPermission>
      <shiro:hasPermission name="tag:list">
        <li>
          <a href="/admin/tag/list">
            <i class="fa fa-tags"></i>
            <span>节点</span>
          </a>
        </li>
      </shiro:hasPermission>
      <shiro:hasPermission name="user:list">
        <li>
          <a href="/admin/user/list">
            <i class="fa fa-user"></i>
            <span>用户</span>
          </a>
        </li>
      </shiro:hasPermission>
      <shiro:hasPermission name="permission:list">
        <li class="treeview">
          <a href="#">
            <i class="fa fa-server"></i> <span>权限管理</span>
            <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
          </a>
          <ul class="treeview-menu">
            <shiro:hasPermission name="admin_user:list">
              <li>
                <a href="/admin/admin_user/list">
                  <i class="fa fa-circle-o"></i>后台用户列表
                </a>
              </li>
            </shiro:hasPermission>
           <shiro:hasPermission name="role:list">
            <li>
              <a href="/admin/role/list">
                <i class="fa fa-circle-o"></i>  角色列表
              </a>
            </li>
            </shiro:hasPermission>
            <shiro:hasPermission name="permission:list">
            <li>
              <a href="/admin/permission/list">
                <i class="fa fa-circle-o"></i>权限列表
              </a>
            </li>
            </shiro:hasPermission>
          </ul>
        </li>
      </shiro:hasPermission>
      <shiro:hasPermission name="system:edit">
        <li class="system-menu">
          <a href="#">
            <i class="fa fa-cogs"></i>
            <span>系统设置</span>
            <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
          </a>
          <ul class="treeview-menu system-treeview-menu">
            <shiro:hasPermission name="system:edit">
              <li>
                <a href="/admin/system/edit">
                  <i class="fa fa-circle-o"></i>基础配置
                </a>
              </li>
            </shiro:hasPermission>
           <shiro:hasPermission name="system:edit">
            <li>
              <a href="/admin/system/edit?pid=2">
                <i class="fa fa-circle-o"></i>上传配置
              </a>
            </li>
            </shiro:hasPermission>
            <shiro:hasPermission name="system:edit">
            <li>
              <a href="/admin/system/edit?pid=3">
                <i class="fa fa-circle-o"></i>邮箱配置
              </a>
            </li>
            </shiro:hasPermission>
            <shiro:hasPermission name="system:edit">
            <li>
              <a href="/admin/system/edit?pid=4">
                <i class="fa fa-circle-o"></i>积分配置
              </a>
            </li>
            </shiro:hasPermission>
            <shiro:hasPermission name="system:edit">
            <li>
              <a href="/admin/system/edit?pid=5">
                <i class="fa fa-circle-o"></i>Redis配置
              </a>
            </li>
            </shiro:hasPermission>
            <shiro:hasPermission name="system:edit">
            <li>
              <a href="/admin/system/edit?pid=6">
                <i class="fa fa-circle-o"></i>Elasticsearch配置
              </a>
            </li>
            </shiro:hasPermission>
            <shiro:hasPermission name="system:edit">
            <li>
              <a href="/admin/system/edit?pid=7">
                <i class="fa fa-circle-o"></i>站点登入配置
              </a>
            </li>
            </shiro:hasPermission>
            <shiro:hasPermission name="system:edit">
            <li>
              <a href="/admin/system/edit?pid=8">
                <i class="fa fa-circle-o"></i>WebSocket配置
              </a>
            </li>
            </shiro:hasPermission>
          </ul>
        </li>
      </shiro:hasPermission>
      <li>
        <a href="/admin/logout">
          <i class="fa fa-sign-out"></i>
          <span>登出</span>
        </a>
      </li>
    </ul>
  </section>
  <!-- /.sidebar -->
</aside>