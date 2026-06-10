package com.orvion.projectmgmt.access;

import com.momentus.foundation.accessgroup.model.UserGroup;
import com.momentus.foundation.login.service.IAccessController;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AccessController implements IAccessController {
    @Override
    public String getExtraAccessRestrictions(List<UserGroup> userGroups) {
        return "";
    }
}
