<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" pageEncoding="utf-8"%>
<!doctype html>
2.<html ng-app="todoApp">
3.  <head>
4.    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.0-rc.5/angular.min.js"></script>
5.    <script src="todo.js"></script>
6.    <link rel="stylesheet" href="todo.css">
7.  </head>
8.  <body>
9.    <h2>Todo</h2>
<P>  The time on the server is ${serverTime}. </P>
10.    <div ng-controller="TodoController">
11.      <span>{{remaining()}} of {{todos.length}} remaining</span>
12.      [ <a href="" ng-click="archive()">archive</a> ]
13.      <ul class="unstyled">
14.        <li ng-repeat="todo in todos">
15.          <input type="checkbox" ng-model="todo.done">
16.          <span class="done-{{todo.done}}">{{todo.text}}</span>
17.        </li>
18.      </ul>
19.      <form ng-submit="addTodo()">
20.        <input type="text" ng-model="todoText"  size="30"
21.               placeholder="add new todo here">
22.        <input class="btn-primary" type="submit" value="add">
23.      </form>
24.    </div>
25.  </body>
26.</html>
