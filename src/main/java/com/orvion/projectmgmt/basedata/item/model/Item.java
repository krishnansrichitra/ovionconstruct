package com.orvion.projectmgmt.basedata.item.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.momentus.corefw.data.EntityProperties;
import com.momentus.corefw.finitevalue.model.FiniteValue;
import com.momentus.corefw.organization.model.OrgBasedEntity;
import jakarta.persistence.*;

import java.util.List;

@Entity
@Table(name = "items")
public class Item extends OrgBasedEntity {

  @Column
  @EntityProperties(isBK = true)
  String itemCode;

  @EntityProperties(isUnique = true)
  @Column
  String barcode;

  @Column
  @EntityProperties(isMandatory = true)
  String itemDesc;

  @Column String itemSpecification;

  @ManyToOne(fetch = FetchType.LAZY)
  @JoinColumn(name = "dimension_uom", referencedColumnName = "fv_code")
  @JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
  FiniteValue dimensionUOM;

  @Column Double length;

  @Column Double width;

  @Column Double height;

  @ManyToOne(fetch = FetchType.LAZY)
  @JoinColumn(name = "weight_uom", referencedColumnName = "fv_code")
  @JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
  FiniteValue weightUOM;

  @Column Double weight;


  @ManyToOne(fetch = FetchType.LAZY)
  @JoinColumn(name = "itemcategory_id")
  @JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
  ItemCategory itemCategory;

  @ManyToOne(fetch = FetchType.LAZY)
  @JoinColumn(name = "prot_level_id", referencedColumnName = "fv_code")
  @JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
  FiniteValue protectionLevel;

  @ManyToOne(fetch = FetchType.LAZY)
  @JoinColumn(name = "product_class_id", referencedColumnName = "fv_code")
  @JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
  FiniteValue productClass;

  @ManyToOne(fetch = FetchType.LAZY)
  @JoinColumn(name = "inventory_class", referencedColumnName = "fv_code")
  @JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
  FiniteValue inventoryClass;

  @ManyToOne(fetch = FetchType.LAZY)
  @JoinColumn(name = "putaway_type", referencedColumnName = "fv_code")
  @JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
  FiniteValue putawayType;

  @Column Double price;

  @Column String currency;

  @Column Boolean merchandiseItem;

  @Column Boolean perishable;

  @ManyToOne(fetch = FetchType.LAZY)
  @JoinColumn(name = "package_class", referencedColumnName = "fv_code")
  @JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
  FiniteValue packageClass;

  @OneToMany(mappedBy = "item", cascade = CascadeType.ALL, orphanRemoval = true)
  @OrderBy("id Asc")
  List<ItemCustomAttribute> customAttributes;



  public String getItemCode() {
    return itemCode;
  }

  public void setItemCode(String itemCode) {
    this.itemCode = itemCode;
  }

  public String getItemDesc() {
    return itemDesc;
  }

  public void setItemDesc(String itemDesc) {
    this.itemDesc = itemDesc;
  }

  public FiniteValue getDimensionUOM() {
    return dimensionUOM;
  }

  public void setDimensionUOM(FiniteValue dimensionUOM) {
    this.dimensionUOM = dimensionUOM;
  }

  public Double getLength() {
    return length;
  }

  public void setLength(Double length) {
    this.length = length;
  }

  public Double getWidth() {
    return width;
  }

  public void setWidth(Double width) {
    this.width = width;
  }

  public Double getHeight() {
    return height;
  }

  public void setHeight(Double height) {
    this.height = height;
  }

  public FiniteValue getWeightUOM() {
    return weightUOM;
  }

  public void setWeightUOM(FiniteValue weightUOM) {
    this.weightUOM = weightUOM;
  }

  public Double getWeight() {
    return weight;
  }

  public void setWeight(Double weight) {
    this.weight = weight;
  }


  public FiniteValue getProtectionLevel() {
    return protectionLevel;
  }

  public void setProtectionLevel(FiniteValue protectionLevel) {
    this.protectionLevel = protectionLevel;
  }

  public FiniteValue getProductClass() {
    return productClass;
  }

  public void setProductClass(FiniteValue productClass) {
    this.productClass = productClass;
  }

  public FiniteValue getInventoryClass() {
    return inventoryClass;
  }

  public void setInventoryClass(FiniteValue inventoryClass) {
    this.inventoryClass = inventoryClass;
  }

  public FiniteValue getPutawayType() {
    return putawayType;
  }

  public void setPutawayType(FiniteValue putawayType) {
    this.putawayType = putawayType;
  }

  public Double getPrice() {
    return price;
  }

  public void setPrice(Double price) {
    this.price = price;
  }

  public String getCurrency() {
    return currency;
  }

  public void setCurrency(String currency) {
    this.currency = currency;
  }

  public Boolean getMerchandiseItem() {
    return merchandiseItem;
  }

  public void setMerchandiseItem(Boolean merchandiseItem) {
    this.merchandiseItem = merchandiseItem;
  }

  public FiniteValue getPackageClass() {
    return packageClass;
  }

  public void setPackageClass(FiniteValue packageClass) {
    this.packageClass = packageClass;
  }

  public List<ItemCustomAttribute> getCustomAttributes() {
    return customAttributes;
  }

  public void setCustomAttributes(List<ItemCustomAttribute> customAttributes) {
    this.customAttributes = customAttributes;
  }

  public String getItemSpecification() {
    return itemSpecification;
  }

  public void setItemSpecification(String itemSpecification) {
    this.itemSpecification = itemSpecification;
  }

  public String getBarcode() {
    return barcode;
  }

  public void setBarcode(String barcode) {
    this.barcode = barcode;
  }

  public Boolean getPerishable() {
    return perishable;
  }

  public void setPerishable(Boolean perishable) {
    this.perishable = perishable;
  }



  public ItemCategory getItemCategory() {
    return itemCategory;
  }

  public void setItemCategory(ItemCategory itemCategory) {
    this.itemCategory = itemCategory;
  }
}
