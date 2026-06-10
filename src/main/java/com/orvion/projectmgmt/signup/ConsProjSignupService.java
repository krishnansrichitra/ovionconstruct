package com.orvion.projectmgmt.signup;

import com.momentus.foundation.orgsignup.service.ProductSignupService;
import org.springframework.stereotype.Service;

import java.util.Collection;

@Service
public class ConsProjSignupService implements ProductSignupService {

    @Override
    public void setupComponents(String orgCode, Collection<String> profileCodes) {

    }
}
