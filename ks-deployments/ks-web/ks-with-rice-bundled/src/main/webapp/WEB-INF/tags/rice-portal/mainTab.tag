<%--
 Copyright 2007-2009 The Kuali Foundation
 
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

<td class="content" valign="top">
    <mainChannel:ksApplications/>
</td>
<%--Disabled enrollment links because that application has not yet been released--%>
<%--
<td class="content" valign="top">
	<mainChannel:ksApplications/>
    <mainChannel:coApplications/>
    <mainChannel:ec1Applications/>
    <mainChannel:wc1Applications/>
</td>
--%>

<%--Disabled old KS Maint Docs as they are currently not functioning after Rice upgrade and provide little functionality--%>
<%--
<td class="content" valign="top">
    <mainChannel:ksMaintenance />
</td>
--%>
<td class="content" valign="top">
	<mainChannel:workflow />
	<mainChannel:notification />
    <mainChannel:rules />
    <mainChannel:holds />
</td>
