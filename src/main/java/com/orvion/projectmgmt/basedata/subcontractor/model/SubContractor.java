package com.orvion.projectmgmt.basedata.subcontractor.model;

import com.momentus.corefw.common.model.Address;
import com.momentus.corefw.data.EntityProperties;
import com.momentus.corefw.organization.model.OrgBasedEntity;
import jakarta.persistence.Column;
import jakarta.persistence.Embedded;

public class SubContractor extends OrgBasedEntity {

    @Column
    @EntityProperties(isBK = true)
    String title;

    @Embedded
    Address address;

    @Column String primaryContactName;

    @Column String primaryContactPhone;

    @Column String secondaryContactName;

    @Column String secondaryContactPhone;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public String getPrimaryContactName() {
        return primaryContactName;
    }

    public void setPrimaryContactName(String primaryContactName) {
        this.primaryContactName = primaryContactName;
    }

    public String getPrimaryContactPhone() {
        return primaryContactPhone;
    }

    public void setPrimaryContactPhone(String primaryContactPhone) {
        this.primaryContactPhone = primaryContactPhone;
    }

    public String getSecondaryContactName() {
        return secondaryContactName;
    }

    public void setSecondaryContactName(String secondaryContactName) {
        this.secondaryContactName = secondaryContactName;
    }

    public String getSecondaryContactPhone() {
        return secondaryContactPhone;
    }

    public void setSecondaryContactPhone(String secondaryContactPhone) {
        this.secondaryContactPhone = secondaryContactPhone;
    }

}
