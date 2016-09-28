<%--
    JBoss, Home of Professional Open Source
    Copyright 2013, Red Hat, Inc. and/or its affiliates, and individual
    contributors by the @authors tag. See the copyright.txt in the
    distribution for a full listing of individual contributors.

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>

<head>
    <title>Event Registration</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/static/resources/css/screen.css"/>"/>
</head>

<body>
<div id="container">
    <div id="header">
        <h2>EVENT</h2>

        <h1>Red Hat Road Tour | Charlotte</h1>
        <div>
        <p>September 26, 2016 | Charlotte, NC</p>
        </div>
    </div>
    <div id="registrationform">

        <form:form commandName="newMember" id="reg">
            <h2>Registration</h2>

            <p>Register for the upcoming event.</p>
            <table>
                <tbody>
                <tr>
                    <td><form:label path="name">Name:</form:label></td>
                    <td><form:input path="name"/></td>
                    <td><form:errors class="invalid" path="name"/></td>
                </tr>
                <tr>
                    <td><form:label path="email">Email:</form:label></td>
                    <td><form:input path="email"/></td>
                    <td><form:errors class="invalid" path="email"/></td>
                </tr>
                <tr>
                    <td><form:label path="phoneNumber">Phone #:</form:label></td>
                    <td><form:input path="phoneNumber"/></td>
                    <td><form:errors class="invalid" path="phoneNumber"/></td>
                </tr>
                <tr>
                    <td><p style="color: red">${error}</p></td>
                </tr>
                </tbody>
            </table>
            <table>
                <tr>
                    <td>
                        <input type="submit" value="Register" class="register"/>
                        <input type="reset" value="Cancel" class="cancel"/>
                    </td>
                </tr>
            </table>
        </form:form>
    </div>
    <div id="footer">
        <p>
            This project was generated from a Maven archetype from
            JBoss.<br/>
        </p>
    </div>
</div>
</body>
</html>
