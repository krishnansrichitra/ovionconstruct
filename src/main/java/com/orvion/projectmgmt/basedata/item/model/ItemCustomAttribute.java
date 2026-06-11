package com.orvion.projectmgmt.basedata.item.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.momentus.corefw.common.model.BaseEntity;
import com.momentus.corefw.customattributes.model.CustomAttribute;
import jakarta.persistence.*;

@Entity
@Table(name = "item_custom_attributes")
public class ItemCustomAttribute extends CustomAttribute {

  @ManyToOne(fetch = FetchType.EAGER)
  @JoinColumn(name = "item_id", nullable = true)
  @JsonIgnore
  Item item;

  public Item getItem() {
    return item;
  }

  public void setItem(Item item) {
    this.item = item;
  }

  @Override
  public void setParentObject(BaseEntity base) {
    setItem((Item) base);
  }

  @Override
  public Object getPK() {
    return getId();
  }
}
