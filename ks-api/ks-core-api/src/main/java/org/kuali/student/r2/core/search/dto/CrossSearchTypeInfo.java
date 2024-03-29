/**
 * Copyright 2010 The Kuali Foundation Licensed under the
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
 */

package org.kuali.student.r2.core.search.dto;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import java.util.ArrayList;
import java.util.List;

@XmlAccessorType(XmlAccessType.FIELD)
public class CrossSearchTypeInfo extends SearchTypeInfo {

	private static final long serialVersionUID = 1L;
	
	List<SubSearchInfo> subSearches;
	JoinCriteriaInfo joinCriteria;
	List<JoinResultMappingInfo> joinResultMappings;
	public List<SubSearchInfo> getSubSearches() {
		return subSearches;
	}
	public void setSubSearches(List<SubSearchInfo> subSearches) {
		if(subSearches == null){
			subSearches = new ArrayList<SubSearchInfo>();
		}
		this.subSearches = subSearches;
	}
	public JoinCriteriaInfo getJoinCriteria() {
		return joinCriteria;
	}
	public void setJoinCriteria(JoinCriteriaInfo joinCriteria) {
		this.joinCriteria = joinCriteria;
	}
	public List<JoinResultMappingInfo> getJoinResultMappings() {
		if(joinResultMappings == null){
			joinResultMappings = new ArrayList<JoinResultMappingInfo>();
		}
		return joinResultMappings;
	}
	public void setJoinResultMappings(List<JoinResultMappingInfo> joinResultMappings) {
		this.joinResultMappings = joinResultMappings;
	}
}
