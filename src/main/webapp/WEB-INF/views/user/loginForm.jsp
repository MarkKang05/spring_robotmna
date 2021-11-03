<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="../layout/header.jsp"%>

<div class="flex justify-center">
    <div class="w-full max-w-md mt-32 mx-3">
        <form class="bg-white shadow-md rounded-lg px-8 pt-6 pb-8 mb-4" action="#" method="POST">
            <div>
                <p class="text-3xl mb-8 font-semibold">
                    Log in
                </p>
            </div>
            <div class="mb-4">
                <label class="block text-gray-700 text-sm font-bold mb-2" for="username">
                    username
                </label>
                <input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" name="username" id="username" type="text">
            </div>
            <div class="mb-6">
                <label class="block text-gray-700 text-sm font-bold mb-2" for="password">
                    Password
                </label>
                <input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 mb-3 leading-tight focus:outline-none focus:shadow-outline" name="password" id="password" type="password" placeholder="******************">
            </div>
            <div class="flex items-center justify-between">
                <button id="btn-login" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline" >
                    Sign in
                </button>
                <a class="inline-block align-baseline font-bold text-sm text-blue-500 hover:text-blue-800" href="/users/register">
                    Create a Account
                </a>
            </div>
        </form>
    </div>
</div>


<%--<script src="/js/user.js"></script>--%>
<%@include file="../layout/footer.jsp"%>
