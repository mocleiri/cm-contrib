/**
 * Copyright 2012 The Kuali Foundation Licensed under the
 * Educational Community License, Version 2.0 (the "License"); you may
 * not use this file except in compliance with the License. You may
 * obtain a copy of the License at
 *
 * http://www.osedu.org/licenses/ECL-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an "AS IS"
 * BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express
 * or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 *
 * Created by haroon on 2012-12-10
 */
package org.kuali.student.common.test.resourceloader;

import org.kuali.rice.core.api.CoreConstants;
import org.kuali.rice.core.api.config.property.Config;
import org.kuali.rice.core.api.config.property.ConfigContext;
import org.kuali.rice.core.api.config.property.ConfigurationService;
import org.kuali.rice.core.api.resourceloader.GlobalResourceLoader;
import org.kuali.rice.core.api.resourceloader.ResourceLoader;
import org.kuali.rice.core.api.util.RiceConstants;
import org.kuali.rice.core.framework.resourceloader.BaseResourceLoader;
import org.kuali.rice.core.framework.resourceloader.SimpleServiceLocator;
import org.kuali.rice.core.impl.config.property.JAXBConfigImpl;
import org.kuali.rice.krad.service.KRADServiceLocator;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;

import javax.xml.namespace.QName;
import java.util.Map;

/**
 * This class sets up the {@link GlobalResourceLoader} for a fake environment (suitable for running in tests).
 * Mostly necessitated due to bean post processing addition in Rice 2.2.0 final causing NPE in
 * {@link DictionaryBeanFactoryPostProcesser#postProcessBeanFactory() postProcessBeanFactory}.
 *
 * @author Kuali Student Team
 */
public class FakeEnvResourceLoader {
    private static final String MOCK_APP_ID = "mock-app.id";

    public void init() {
        Config config = new JAXBConfigImpl();
        config.putProperty(CoreConstants.Config.APPLICATION_ID, MOCK_APP_ID);
        ConfigContext.init(config);
        SimpleServiceLocator serviceLocator = new SimpleServiceLocator();

        ConfigurationService configurationService = new ConfigurationService() {
            @Override public String getPropertyValueAsString(String key) { return "{0} message"; }
            @Override public boolean getPropertyValueAsBoolean(String key) { return false; }
            @Override public Map<String, String> getAllProperties() { return null; }
        };

        serviceLocator.addService(new QName(KRADServiceLocator.KUALI_CONFIGURATION_SERVICE), configurationService);

        ResourceLoader resourceLoader =
                new BaseResourceLoader(
                        new QName(MOCK_APP_ID, RiceConstants.DEFAULT_ROOT_RESOURCE_LOADER_NAME), serviceLocator);

        try {
            GlobalResourceLoader.stop();
            GlobalResourceLoader.addResourceLoader(resourceLoader);
            GlobalResourceLoader.start();
        } catch (Exception e) {
            throw new RuntimeException("Error initializing GRL", e);
        }
    }
}