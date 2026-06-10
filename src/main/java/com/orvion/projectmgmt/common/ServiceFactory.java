package com.orvion.projectmgmt.common;

import com.momentus.corefw.generic.service.GenericService;
import com.momentus.corefw.generic.service.IServiceFactory;
import com.momentus.corefw.generic.service.RootLookupService;
import org.springframework.stereotype.Service;

@Service
public class ServiceFactory implements IServiceFactory {
    @Override
    public GenericService getService(String entity) {
        return null;
    }

    @Override
    public RootLookupService getLookupService(String entity) {
        return null;
    }
}
