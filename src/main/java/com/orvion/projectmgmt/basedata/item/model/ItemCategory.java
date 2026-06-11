package com.orvion.projectmgmt.basedata.item.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.momentus.corefw.data.EntityProperties;
import com.momentus.corefw.organization.model.OrgBasedEntity;
import jakarta.persistence.*;

@Entity
@Table(name = "entity_categories")
public class ItemCategory extends OrgBasedEntity {

  @Column
  @EntityProperties(isUnique = true, isMandatory = true)
  String code;

  @Column
  @EntityProperties(isBK = true)
  String category;

  @ManyToOne(fetch = FetchType.LAZY)
  @JoinColumn(name = "parent_category_id")
  @JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
  ItemCategory parentCategory;

  public String getCode() {
    return code;
  }

  public void setCode(String code) {
    this.code = code;
  }

  public String getCategory() {
    return category;
  }

  public void setCategory(String category) {
    this.category = category;
  }

  public ItemCategory getParentCategory() {
    return parentCategory;
  }

  public void setParentCategory(ItemCategory parentCategory) {
    this.parentCategory = parentCategory;
  }
}
