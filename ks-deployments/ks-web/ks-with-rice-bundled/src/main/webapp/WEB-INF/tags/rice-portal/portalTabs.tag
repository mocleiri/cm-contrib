<%--
 Copyright 2005-2012 The Kuali Foundation
 
 Licensed under the Educational Community License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.opensource.org/licenses/ecl2.php
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
--%>
<%@ include file="/rice-portal/jsp/sys/riceTldHeader.jsp"%>

<%@ attribute name="selectedTab" required="true"%>

<div id="tabs" class="tabposition">
    <ul>
        <%-- Main Menu --%>

        <c:if test='${selectedTab == "main"}'>
            <li class="red">
                <a class="red" href="portal.do?selectedTab=main"
                   title="Main Menu">Main Menu</a>
            </li>
        </c:if>
        <c:if test='${selectedTab != "main"}'>
            <c:if test="${empty selectedTab}">
                <li class="red">
                    <a class="red" href="portal.do?selectedTab=main"
                       title="Main Menu">Main Menu</a>
                </li>
            </c:if>
            <c:if test="${!empty selectedTab}">
                <li class="green">
                    <a class="green" href="portal.do?selectedTab=main"
                       title="Main Menu">Main Menu</a>
                </li>
            </c:if>
        </c:if>


        <%-- Administration  --%>

        <c:if test='${selectedTab == "administration"}'>
            <li class="red">
                <a class="red" href="portal.do?selectedTab=administration"
                   title="Administration">Administration</a>
            </li>
        </c:if>
        <c:if test='${selectedTab != "administration"}'>
            <li class="green">
                <a class="green"
                   href="portal.do?selectedTab=administration"
                   title="Administration">Administration</a>
            </li>
        </c:if>


        <%-- KS Kitchen Sink  --%>
        <%-- Disabled links because that application has not yet been released
        <c:if test='${selectedTab == "kitchensink"}'>
            <li class="red">
                <a class="red" href="portal.do?selectedTab=kitchensink"
                   title="Kitchen Sink">Kitchen Sink</a>
            </li>
        </c:if>
        <c:if test='${selectedTab != "kitchensink"}'>
            <li class="green">
                <a class="green"
                   href="portal.do?selectedTab=kitchensink"
                   title="Kitchen Sink">Kitchen Sink</a>
            </li>
        </c:if>
        --%>
    </ul>
</div>
