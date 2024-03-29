<%@ include file="/rice-portal/jsp/sys/riceTldHeader.jsp"%>

<channel:portalChannelTop channelTitle="Course Offering Sandbox" />
<div class="body">
    <strong>Course Offering</strong>
    <ul class="chan">
        <!-- WARNING: the following 3 links are duplicated in "EnrollmentHomeView.xml" -->
        <li><portal:portalLink displayTitle="true" title="Perform Rollover" url="${ConfigProperties.lum.application.url}/kr-krad/courseOfferingRollover?viewId=courseOfferingRolloverManagementView&pageId=selectTermsForRollover&methodToCall=start"/></li>
        <li><portal:portalLink displayTitle="true" title="Rollover Details" url="${ConfigProperties.lum.application.url}/kr-krad/courseOfferingRollover?viewId=courseOfferingRolloverManagementView&pageId=selectTermForRolloverDetails&methodToCall=start"/></li>
        <li><portal:portalLink displayTitle="true" title="Manage Course Offerings" url="${ConfigProperties.lum.application.url}/kr-krad/courseOfferingManagement?viewId=courseOfferingManagementView&pageId=searchInputPage&methodToCall=start"/></li>
        <li><portal:portalLink displayTitle="true" title="Delete Target Term" url="${ConfigProperties.lum.application.url}/kr-krad/deleteTargetTerm?viewId=deleteTargetTermView&pageId=selectTargetTermToDelete&methodToCall=start"/></li>
        <li><portal:portalLink displayTitle="true" title="Release to Departments" url="${ConfigProperties.lum.application.url}/kr-krad/courseOfferingRollover?viewId=courseOfferingRolloverManagementView&pageId=releaseToDepts&methodToCall=start"/></li>
        <br>
        <li><a class="portal_link" target="_blank" href="${ConfigProperties.lum.application.url}/kr-krad/courseOfferingManagement?viewId=courseOfferingManagementView&pageId=searchInputPage&methodToCall=start&withinPortal=false">Manage Registration Group (future)</a></li>

    </ul>
    <strong>Basic DTO Lookup and Inquiry</strong>
    <ul class="chan">
        <li><portal:portalLink displayTitle="true" title="Activity Offering Lookup" url="${ConfigProperties.lum.application.url}/kr-krad/lookup?methodToCall=start&dataObjectClassName=org.kuali.student.enrollment.courseoffering.dto.ActivityOfferingInfo&returnLocation=${ConfigProperties.lum.application.url}/portal.do&hideReturnLink=true&showMaintenanceLinks=true" /></li>
        <li><portal:portalLink displayTitle="true" title="Activity Offering Lookup 2" url="${ConfigProperties.lum.application.url}/kr-krad/lookup?methodToCall=start&dataObjectClassName=org.kuali.student.enrollment.courseoffering.dto.ActivityOfferingInfo&viewId=KS-ActivityOffering-LookupView2&returnLocation=${ConfigProperties.lum.application.url}/portal.do&hideReturnLink=true" /></li>
        <li><portal:portalLink displayTitle="true" title="CourseOfferingInfo Lookup" url="${ConfigProperties.lum.application.url}/kr-krad/lookup?methodToCall=start&dataObjectClassName=org.kuali.student.enrollment.courseoffering.dto.CourseOfferingInfo&returnLocation=${ConfigProperties.lum.application.url}/portal.do&hideReturnLink=true" /></li>
        <li><portal:portalLink displayTitle="true" title="Enrollment Fee Info Lookup and Inquiry" url="${ConfigProperties.lum.application.url}/kr-krad/lookup?methodToCall=start&dataObjectClassName=org.kuali.student.r2.core.fee.dto.EnrollmentFeeInfo&returnLocation=${ConfigProperties.lum.application.url}/portal.do&hideReturnLink=true" /></li>
        <%--<li><portal:portalLink displayTitle="true" title="Enrollment Fee Info Inquiry" url="${ConfigProperties.lum.application.url}/kr-krad/lookup?methodToCall=start&dataObjectClassName=org.kuali.student.r2.core.fee.dto.EnrollmentFeeInfo&returnLocation=${ConfigProperties.lum.application.url}/portal.do&hideReturnLink=true" /></li> --%>
        <li><portal:portalLink displayTitle="true" title="Format Offering Info Lookup" url="${ConfigProperties.lum.application.url}/kr-krad/lookup?methodToCall=start&dataObjectClassName=org.kuali.student.enrollment.courseoffering.dto.FormatOfferingInfo&returnLocation=${ConfigProperties.lum.application.url}/portal.do&hideReturnLink=true&showMaintenanceLinks=true" /></li>
        <li><portal:portalLink displayTitle="true" title="SocRolloverResultInfo Lookup" url="${ConfigProperties.lum.application.url}/kr-krad/lookup?methodToCall=start&dataObjectClassName=org.kuali.student.enrollment.courseofferingset.dto.SocRolloverResultInfo&returnLocation=${ConfigProperties.lum.application.url}/portal.do&hideReturnLink=true" /></li>
        <li><portal:portalLink displayTitle="true" title="SocRolloverResultItemInfo Lookup" url="${ConfigProperties.lum.application.url}/kr-krad/lookup?methodToCall=start&dataObjectClassName=org.kuali.student.enrollment.courseofferingset.dto.SocRolloverResultItemInfo&returnLocation=${ConfigProperties.lum.application.url}/portal.do&hideReturnLink=true" /></li>
        <%--<li><portal:portalLink displayTitle="true" title="Offering Instructor Info Lookup" url="${ConfigProperties.lum.application.url}/kr-krad/lookup?viewId=KS-Person-LookupView&methodToCall=start&dataObjectClassName=org.kuali.rice.kim.api.identity.Person&returnLocation=${ConfigProperties.lum.application.url}/portal.do&hideReturnLink=true" /></li>--%>
        <li><portal:portalLink displayTitle="true" title="Term Info Lookup" url="${ConfigProperties.lum.application.url}/kr-krad/lookup?methodToCall=start&dataObjectClassName=org.kuali.student.enrollment.acal.dto.TermInfo&returnLocation=${ConfigProperties.lum.application.url}/portal.do&hideReturnLink=true" /></li>
        <li><portal:portalLink displayTitle="true" title="Course Info Lookup" url="${ConfigProperties.lum.application.url}/kr-krad/lookup?methodToCall=start&dataObjectClassName=org.kuali.student.r2.lum.course.dto.CourseInfo&returnLocation=${ConfigProperties.lum.application.url}/portal.do&hideReturnLink=true" /></li>
    </ul>

    <strong>Maintenance eDoc</strong> <br/>
    <ul class="chan">
        <!-- WARNING: "Course Offering (New)" link is duplicated in "EnrollmentHomeView.xml" -->
        <li><portal:portalLink displayTitle="true" title="Course Offering (New)" url="${ConfigProperties.lum.application.url}/kr-krad/courseOffering?methodToCall=start&dataObjectClassName=org.kuali.student.enrollment.class2.courseoffering.dto.CourseOfferingCreateWrapper&returnLocation=${ConfigProperties.lum.application.url}/portal.do&hideReturnLink=true"/></li>
        <li><portal:portalLink displayTitle="true" title="Course Offering (Edit)" url="${ConfigProperties.lum.application.url}/kr-krad/maintenance?methodToCall=maintenanceEdit&dataObjectClassName=org.kuali.student.enrollment.class2.courseoffering.dto.CourseOfferingEditWrapper&coInfo.id=34a0303d-af3a-467a-83b1-8a1cdd391cc1&returnLocation=${ConfigProperties.lum.application.url}/portal.do&hideReturnLink=true"/></li>
        <li><portal:portalLink displayTitle="true" title="Enrollment Fee Info (New)" url="${ConfigProperties.lum.application.url}/kr-krad/maintenance?methodToCall=start&dataObjectClassName=org.kuali.student.r2.core.fee.dto.EnrollmentFeeInfo&returnLocation=${ConfigProperties.lum.application.url}/portal.do&hideReturnLink=true"/></li>
        <li><portal:portalLink displayTitle="true" title="Format Offering Info (New)" url="${ConfigProperties.lum.application.url}/kr-krad/maintenance?methodToCall=start&dataObjectClassName=org.kuali.student.enrollment.courseoffering.dto.FormatOfferingInfo&returnLocation=${ConfigProperties.lum.application.url}/portal.do&hideReturnLink=true"/></li>
    </ul>
</div>
<channel:portalChannelBottom />
