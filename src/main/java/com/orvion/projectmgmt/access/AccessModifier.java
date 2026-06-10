package com.orvion.projectmgmt.access;

import com.momentus.corefw.context.ApplicationContext;
import com.momentus.corefw.generic.service.IAccessModifier;
import com.momentus.corefw.organization.model.OrgBasedEntity;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class AccessModifier implements IAccessModifier {

    @Override
    public void updateListFilter(String entity, ApplicationContext context, Map<String, Object> filter) {

    }

    @Override
    public void updateListFilter(String entity, ApplicationContext context, StringBuffer finalCondition) {

    }

    @Override
    public boolean isAccessAllowed(OrgBasedEntity entity, ApplicationContext context) {
        return false;
    }

    @Override
    public boolean canUserAccess(String userId, OrgBasedEntity entity, ApplicationContext context) {
        return false;
    }
}
