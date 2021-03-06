<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../layout/header.jsp"%>

<div class="flex justify-center">
    <div class="w-full max-w-md mt-32 mx-3">
        <form class="bg-white shadow-md rounded-lg px-8 pt-6 pb-8 mb-4" >
            <div>
                <p class="text-3xl mb-8 font-semibold">
                    Register
                </p>
            </div>
<%--            username--%>
            <div class="mb-4">
                <label class="block text-gray-700 text-sm font-bold mb-2" for="username">
                    Username
                </label>
                <input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" name="username" id="username" type="text" placeholder="Username" required>
            </div>
<%--            email--%>
            <div class="mb-4">
                <label class="block text-gray-700 text-sm font-bold mb-2" for="email">
                    E-mail
                </label>
                <input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" name="email" id="email" type="text" placeholder="email address">
            </div>
<%--            password--%>
            <div class="mb-4">
                <label class="block text-gray-700 text-sm font-bold mb-2" for="password">
                    Password
                </label>
<%--                <input onchange="check_pw()" class="shadow appearance-none border border-red-500 rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" name="password" id="password" type="password" placeholder="******************">--%>
                    <input class="shadow appearance-none border border-red-500 rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" name="password" id="password" type="password" placeholder="******************">
<%--                {{!-- <p class="text-red-500 text-xs italic">Please choose a password.</p> --}}--%>
            </div>
<%--            confirm password--%>
            <div class="mb-6">
                <label class="block text-gray-700 text-sm font-bold mb-2" for="password">
                    Confirm Password
                </label>
                <input class="shadow appearance-none border border-red-500 rounded w-full py-2 px-3 text-gray-700 mb-3 leading-tight focus:outline-none focus:shadow-outline" name="password2" id="password2" type="password" placeholder="******************">
<%--                {{!-- <p class="text-red-500 text-xs italic">Please choose a password.</p> --}}--%>
                &nbsp;<span id="check"></span>
            </div>
        </form>
        <div class="flex items-center justify-between">
            <button class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline" id="btn-save">
                Sign In
            </button>
            <a class="inline-block align-baseline font-bold text-sm text-blue-500 hover:text-blue-800" href="#">
                Forgot Password?
            </a>
        </div>
        <p class="text-center text-gray-500 text-xs">
            &copy;2021 M&A. All rights reserved.
        </p>
    </div>
</div>

<script src="/js/user.js"></script>

<%@include file="../layout/footer.jsp"%>
