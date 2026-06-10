create table applications ( app_code varchar(50) primary key, app_description varchar(255) , app_name varchar(100));
create table modules (module_code varchar(50) primary key, description varchar(255) , module_name varchar(100));
create table app_modules(id bigint primary key AUTO_INCREMENT, app_code varchar(50), module_code varchar(50));


insert into applications(app_code,app_description,app_name) values ('CMS','Orvion Contsruction Management system', 'Project Management') on duplicate key update app_code = app_code;
insert into modules (module_code,description,module_name) values ('ADM','ADMIN','ADMIN')  on duplicate key update module_code = module_code;
insert into modules (module_code,description,module_name) values ('MST','Master Data','Master Data')  on duplicate key update module_code = module_code;
insert into modules (module_code,description,module_name) values ('PRJ','Project Management','Project Management')  on duplicate key update module_code = module_code;
insert into modules (module_code,description,module_name) values ('OPS','Operations','Operations')  on duplicate key update module_code = module_code;
insert into modules (module_code,description,module_name) values ('DCS','Document Management','Document Management')  on duplicate key update module_code = module_code;
insert into modules (module_code,description,module_name) values ('FIN','Finance Management','Finance Management')  on duplicate key update module_code = module_code;
insert into modules (module_code,description,module_name) values ('HRC','HR & Compliance','HR & Compliance') on duplicate key update module_code =module_code;
insert into modules (module_code,description,module_name) values ('RPA','Reporting and Analytics','Reporting and Analytics')  on duplicate key update module_code = module_code;


insert into app_modules(id,app_code,module_code) values (1,'CMS','ADM') on duplicate key update id = id;
insert into app_modules(id,app_code,module_code) values (2,'CMS','MST') on duplicate key update id = id;
insert into app_modules(id,app_code,module_code) values (3,'CMS','PRJ') on duplicate key update id = id;
insert into app_modules(id,app_code,module_code) values (4,'CMS','OPS') on duplicate key update id = id;
insert into app_modules(id,app_code,module_code) values (5,'CMS','DCS') on duplicate key update id = id;
insert into app_modules(id,app_code,module_code) values (6,'CMS','FIN') on duplicate key update id = id;
insert into app_modules(id,app_code,module_code) values (7,'CMS','HRC') on duplicate key update id = id;
insert into app_modules(id,app_code,module_code) values (8,'CMS','RPA') on duplicate key update id = id;



 create table module_access_codes (
        access_code varchar(50) PRIMARY KEY,
        description varchar(255),
        module_code varchar(50) not null
  );
--         foreign key (sector_code)  references sector(code)

insert into module_access_codes (access_code,description,module_code) values ('ADM-ADM','Administration access to manage users , roles and company','ADM') on duplicate key update access_code = access_code;
insert into module_access_codes (access_code,description,module_code) values ('MST-MST','Creation and  import master data','MST') on duplicate key update access_code = access_code;

insert into module_access_codes (access_code,description,module_code) values ('PRJ-PRJ','Manage Projects','PRJ') on duplicate key update access_code = access_code;
insert into module_access_codes (access_code,description,module_code) values ('PRJ-ENG','Project Engineer','PRJ') on duplicate key update access_code = access_code;
insert into module_access_codes (access_code,description,module_code) values ('PRJ-SENG','Site Engineer','PRJ') on duplicate key update access_code = access_code;
insert into module_access_codes (access_code,description,module_code) values ('PRJ-SSUP','Site Supervisor','PRJ') on duplicate key update access_code = access_code;
insert into module_access_codes (access_code,description,module_code) values ('OPS-PRCM','Procurement/ Purchase Manager','OPS') on duplicate key update access_code = access_code;
insert into module_access_codes (access_code,description,module_code) values ('OPS-STKP','Store Keeper','OPS') on duplicate key update access_code = access_code;
insert into module_access_codes (access_code,description,module_code) values ('OPS-OPS','Execute Operational Tasks','OPS') on duplicate key update access_code = access_code;


insert into module_access_codes (access_code,description,module_code) values ('DCS-DCS','Documentation Administrator','DCS') on duplicate key update access_code = access_code;
insert into module_access_codes (access_code,description,module_code) values ('DCS-DUS','Documentation User','DCS') on duplicate key update access_code = access_code;
insert into module_access_codes (access_code,description,module_code) values ('FIN-FIN','Financial Managment','FIN') on duplicate key update access_code = access_code;
insert into module_access_codes (access_code,description,module_code) values ('FIN-FOP','Financial Operations','FIN') on duplicate key update access_code = access_code;

insert into module_access_codes (access_code,description,module_code) values ('HR-HR','HR Administration','HRC') on duplicate key update access_code = access_code;
insert into module_access_codes (access_code,description,module_code) values ('HR-HOP','HR Operations','HRC') on duplicate key update access_code = access_code;



insert into module_access_codes (access_code,description,module_code) values ('RPA-RPA','Reporting and Analytics','RPA') on duplicate key update access_code = access_code;




create table industry (
code varchar(20) PRIMARY KEY ,
name varchar(255) NOT NULL,
created_by varchar(255) DEFAULT NULL,
created_time datetime(6) DEFAULT NULL,
deleted tinyint(1) DEFAULT '0',
last_updated_by varchar(255) DEFAULT NULL,
last_updated_time datetime(6) DEFAULT NULL,
version bigint DEFAULT 0
);

create table sector (
code varchar(20) PRIMARY KEY ,
name varchar(255) NOT NULL,
seq_no NUMERIC(6,2),
created_by varchar(255) DEFAULT NULL,
created_time datetime(6) DEFAULT NULL,
deleted tinyint(1) DEFAULT '0',
last_updated_by varchar(255) DEFAULT NULL,
last_updated_time datetime(6) DEFAULT NULL,
version bigint DEFAULT 0
);



CREATE TABLE organization (
  id bigint   PRIMARY KEY  AUTO_INCREMENT,
  org_code varchar(100) NOT NULL ,
  organization_name varchar(255) NOT NULL,
  address1 varchar(255) NOT NULL,
  address2 varchar(255) DEFAULT NULL,
  city varchar(255) DEFAULT NULL,
  state varchar(255) DEFAULT NULL,
  zip_code varchar(255) DEFAULT NULL,
  country varchar(255) DEFAULT NULL,
  email varchar(255) NOT NULL,
  phone varchar(255) NOT NULL,
  primary_contact varchar(255) DEFAULT NULL,
  industry_code varchar(20) DEFAULT NULL,
  sector_code  varchar(20) DEFAULT NULL,
  active tinyint(1) DEFAULT '1',
  registration_date DATE DEFAULT NULL,
  supplimentary_info BLOB DEFAULT NULL,
  trial_period tinyint(1) DEFAULT '0',
  created_by varchar(255) DEFAULT NULL,
  created_time datetime(6) DEFAULT NULL,
  deleted tinyint(1) DEFAULT '0',
  last_updated_by varchar(255) DEFAULT NULL,
  last_updated_time datetime(6) DEFAULT NULL,
  version bigint DEFAULT 0,
  foreign key (industry_code)  references industry(code),
  foreign key (sector_code)  references sector(code)

);


insert into sector(code, name,seq_no ) VALUES ('CNF','Construction & Development',1) on duplicate key update code = code;
insert into sector(code, name,seq_no ) VALUES ('OTH','Other',99)  on duplicate key update code = code;


insert into organization(id,org_code,organization_name,address1,email,phone) values (1,'Orvion','Orvion Pvt Ltd','Bhive ','admin@orvion.com','988497723') on duplicate key update id=id;


CREATE TABLE users(
  user_id varchar(255) PRIMARY KEY,
  org_code varchar(255) NOT NULL,
  email varchar(255) NOT NULL,
  first_name varchar(255) NOT NULL,
  last_name varchar(255) NOT NULL,
  password varchar(255) NOT NULL,
  phone varchar(255) NOT NULL,
  created_by varchar(255) DEFAULT NULL,
  created_time datetime(6) DEFAULT NULL,
  deleted tinyint(1) DEFAULT '0',
  last_updated_by varchar(255) DEFAULT NULL,
  last_updated_time datetime(6) DEFAULT NULL,
  version bigint DEFAULT 0,
  org_owner tinyint(1) DEFAULT 0,
  system_created tinyint(1) DEFAULT 0

);
insert into users (user_id,org_code,email,first_name,last_name,password,phone,org_owner,system_created) values
 ('admin@orvion.com','Orvion','admin@orvion.com','Admin','Orvion','$2a$04$bKqtQw1pECimXJtGnZ7l9uwajLLHBHGWf5HuKXHwxbP0lJ05ZaqWe','908889',true,true);

CREATE TABLE roles (
  id bigint   PRIMARY KEY  AUTO_INCREMENT,
  org_code varchar(255) NOT NULL,
  access_codes blob,
  title varchar(255) DEFAULT NULL,
  description varchar(255) DEFAULT NULL,
  created_by varchar(255) DEFAULT NULL,
  created_time datetime(6) DEFAULT NULL,
  deleted tinyint(1) DEFAULT '0',
  last_updated_by varchar(255) DEFAULT NULL,
  last_updated_time datetime(6) DEFAULT NULL,
  version bigint DEFAULT 0
);

insert into roles (id,org_code,access_codes,description,title) values (1,1,'ADM-ADM','Admin','Admin');

CREATE TABLE user_roles (
  id bigint PRIMARY KEY  AUTO_INCREMENT ,
  role_id bigint NOT NULL,
  user_id varchar(255) ,
  created_by varchar(255) DEFAULT NULL,
  created_time datetime(6) DEFAULT NULL,
  deleted tinyint(1) DEFAULT '0',
  last_updated_by varchar(255) DEFAULT NULL,
  last_updated_time datetime(6) DEFAULT NULL,
   version bigint DEFAULT 0,
  foreign key (role_id) references roles (id),
  foreign key (user_id) references users(user_id)
);

insert into user_roles(id,role_id,user_id) values (1,1,'admin@orvion.com');

create table profile_group(
profile_group_code varchar(100) primary key,
profile_group_description  varchar(255) NOT NULL,
active tinyint(1) DEFAULT '1',
created_by varchar(255) DEFAULT NULL,
created_time datetime(6) DEFAULT NULL,
deleted tinyint(1) DEFAULT '0',
last_updated_by varchar(255) DEFAULT NULL,
 last_updated_time datetime(6) DEFAULT NULL,
  version bigint DEFAULT 0
);





create table profile(
profile_code varchar(255) PRIMARY KEY,
profile_description varchar(255),
parent_profile_code varchar(255),
full_profile_code varchar(255),
parent_profile_id bigint,
profile_group_code varchar(100) ,
active tinyint(1) DEFAULT '1',
created_by varchar(255) DEFAULT NULL,
created_time datetime(6) DEFAULT NULL,
deleted tinyint(1) DEFAULT '0',
last_updated_by varchar(255) DEFAULT NULL,
 last_updated_time datetime(6) DEFAULT NULL,
  version bigint DEFAULT 0,
 foreign key (profile_group_code) references profile_group(profile_group_code)
);


insert into profile_group(profile_group_code,profile_group_description,created_by,created_time) values ('GNL','General','seed',now());
insert into profile(profile_code,profile_description,full_profile_code,profile_group_code,created_by,created_time) values ('ROOT','Base Profile','ROOT','GNL','seed',now());

create table entity (
entity_name varchar(100) PRIMARY KEY,
entity_display varchar(100),
full_package varchar(255) not null,
profile_group_code varchar(100),
active tinyint(1) DEFAULT '1',
support_import tinyint(1) DEFAULT '1',
sequence numeric(4),
support_custom_attributes tinyint(1) DEFAULT '0',
support_ui_customization tinyint(1)  DEFAULT '0',
profile_code varchar(255),
created_by varchar(255) DEFAULT NULL,
created_time datetime(6) DEFAULT NULL,
deleted tinyint(1) DEFAULT '0',
last_updated_by varchar(255) DEFAULT NULL,
 last_updated_time datetime(6) DEFAULT NULL,
  version bigint DEFAULT 0,
foreign key (profile_group_code) references profile_group(profile_group_code),
foreign key (profile_code) references profile(profile_code)
);


create table sector_profile(
id varchar(255) primary key,
sector varchar(255) ,
profile_code varchar(255),
foreign key (profile_code) references profile (profile_code)
);

insert into sector_profile(id,sector,profile_code)values ('CNF-ROOT','CNF','ROOT');





create table finite_group(
group_code varchar(100) primary key,
group_name varchar(255)
);

create table finite_value(
fv_code varchar(100) primary key,
fv_value varchar(255),
group_code varchar(100),
profile_code varchar(255),
seq_no decimal(10,3),
foreign key (profile_code) references profile (profile_code),
foreign key  (group_code) references finite_group(group_code)
);

insert into finite_group(group_code,group_name) values ('data_type','Data Type');
insert into finite_value(fv_code,fv_value,group_code,profile_code,seq_no) values ('data_type_str','String','data_type','ROOT',1);
insert into finite_value(fv_code,fv_value,group_code,profile_code,seq_no) values ('data_type_long','Numeric (without decimals)','data_type','ROOT',2);
insert into finite_value(fv_code,fv_value,group_code,profile_code,seq_no) values ('data_type_float','Numeric (decimals)','data_type','ROOT',3);
insert into finite_value(fv_code,fv_value,group_code,profile_code,seq_no) values ('data_type_date','Date','data_type','ROOT',4);
insert into finite_value(fv_code,fv_value,group_code,profile_code,seq_no) values ('data_type_dtime','Date and Time','data_type','ROOT',5);
insert into finite_value(fv_code,fv_value,group_code,profile_code,seq_no) values ('data_type_bool','Boolean','data_type','ROOT',6);
insert into finite_value(fv_code,fv_value,group_code,profile_code,seq_no) values ('data_type_custom','Custom String','data_type','ROOT',7);
insert into finite_value(fv_code,fv_value,group_code,profile_code,seq_no) values ('data_type_blob','Blob','data_type','ROOT',8);
insert into finite_value(fv_code,fv_value,group_code,profile_code,seq_no) values ('data_type_fv','Finite Value','data_type','ROOT',9);



insert into finite_group(group_code,group_name) values ('nextup_comp','Nextup Components');
insert into finite_value(fv_code,fv_value,group_code,profile_code,seq_no) values ('nxtup_dt','Date','nextup_comp','ROOT',10);
insert into finite_value(fv_code,fv_value,group_code,profile_code,seq_no) values ('nxtup_prfx','Entity Prefix','nextup_comp','ROOT',11);
insert into finite_value(fv_code,fv_value,group_code,profile_code,seq_no) values ('nxtup_BK','Parent Object Business Key','nextup_comp','ROOT',12);
insert into finite_value(fv_code,fv_value,group_code,profile_code,seq_no) values ('nxtup_seq','Sequence','nextup_comp','ROOT',13);
insert into finite_value(fv_code,fv_value,group_code,profile_code,seq_no) values ('nxtup_comp1','Component 1','nextup_comp','ROOT',14);
insert into finite_value(fv_code,fv_value,group_code,profile_code,seq_no) values ('nxtup_comp2','Component 2','nextup_comp','ROOT',15);
insert into finite_value(fv_code,fv_value,group_code,profile_code,seq_no) values ('nxtup_comp3','Component 3','nextup_comp','ROOT',16);
insert into finite_value(fv_code,fv_value,group_code,profile_code,seq_no) values ('nxtup_const','Constant','nextup_comp','ROOT',17 );


create table nextup_config(
 id varchar(100) primary key ,
 profile_code varchar(255),
 entity varchar(255),
 field_1 varchar(100),
 field_2 varchar(100),
 field_3 varchar(100),
 field_4 varchar(100),
 field_5 varchar(100),
 date_format varchar(100),
 reset_seq_per_day tinyint(1),
 prefix varchar(20),
 sequence_width Numeric(3),
 profile_level numeric(4),
 foreign key (profile_code) references profile (profile_code),
 foreign key (field_1) references finite_value (fv_code),
 foreign key (field_2) references finite_value (fv_code),
 foreign key (field_3) references finite_value (fv_code),
 foreign key (field_4) references finite_value (fv_code),
 foreign key (field_5) references finite_value (fv_code)
) ;


INSERT INTO nextup_config(id,profile_code,entity,field_1,field_2)
values ('CUST-UI','ROOT','UI','nxtup_prfx','nxtup_seq') on duplicate key update id = id;

    create table menu_group (
        id varchar(100) not null,
        menu_key varchar(255),
        menu_set_id varchar(100) ,
        access_code varchar(255),
        seq_no NUMERIC(10,2),
        primary key (id)
    ) ;
    create table menu_item (
        id varchar(100) not null ,
        menu_key varchar(255),
        access_code varchar(255),
        page varchar(255),
        menu_group_id varchar(100) ,
        has_children tinyint(1),
         parent_item varchar(100),
        seq_no NUMERIC(10,2),
        primary key (id)
    ) ;
    create table menu_set (
        id varchar(100) not null ,
        created_by varchar(255),
        created_time datetime(6),
        deleted BOOLEAN DEFAULT FALSE,
        last_updated_by varchar(255),
        last_updated_time datetime(6),
        version bigint,
        profile_code varchar(255),
        description varchar(255),
        profile_level numeric(4),
        primary key (id)
    ) ;

    alter table menu_group
       add constraint FKrhs5tphmdqtb9pax9qv4byslb
       foreign key (menu_set_id)
       references menu_set (id);

    alter table menu_item
       add constraint FKop2h6vibgw1xhscv0602litss
       foreign key (menu_group_id)
       references menu_group (id) ;

    alter table menu_set
       add constraint FKitfu1nkb9m9opksviepldll9a
       foreign key (profile_code)
       references profile (profile_code) ;






create table list_metadata (
        id varchar(100) not null,
        created_by varchar(255),
        created_time datetime(6),
        deleted BOOLEAN DEFAULT FALSE,
        last_updated_by varchar(255),
        last_updated_time datetime(6),
        version bigint,
        profile_code varchar(255),
        description varchar(255),
        entity varchar(255),
        js_file varchar(255),
        profile_level numeric(4),
        has_advance_filter tinyint(1) default '0',
        primary key (id)
    ) ;

create table list_columns (
        id varchar(100) not null,
        field_key varchar(255),
        accessor varchar(255),
        list_metadata_id varchar(100),
        seq_no NUMERIC(10,2),
        filterable tinyint(1) default '0',
        visible tinyint(1) default '1',
        primary key (id)
    ) ;

    create table filter_field (
            id varchar(100) not null,
            control varchar(255),
            field_key varchar(255),
            param varchar(255),
            accessor varchar(255),
            list_metadata_id varchar(100),
            seq_no NUMERIC(10,2),
            primary key (id)
        ) ;

    create table list_buttons (
            id varchar(100) not null,
            button_class varchar(255),
            inner_text varchar(255),
            js_method varchar(255),
            list_metadata_id varchar(100),
            seq_no NUMERIC(10,2),
            primary key (id)
        ) ;



alter table list_metadata
       add constraint FKmvjb81uqom19b0ugawohdhlph
       foreign key (profile_code)
       references profile (profile_code);


alter table list_columns
      add constraint FKfsbbi7kn7xc5eijun59n4oje6
      foreign key (list_metadata_id)
      references list_metadata (id);

  alter table filter_field
         add constraint FKmv2aqkv45d1ke2mytuu51stto
         foreign key (list_metadata_id)
         references list_metadata (id);

alter table list_buttons
       add constraint FKpp8qgcfilmv5jdnhipkhlu8cp
       foreign key (list_metadata_id)
       references list_metadata (id) ;


    create table updateview_buttons (
        id varchar(255) not null,
        button_class varchar(255),
        inner_text varchar(255),
        js_method varchar(255),
        seq_no decimal(10,2),
        visibility varchar(20),
        updateview_metadata_id varchar(255),
        show_to_user tinyint(1) default '1',
        primary key (id)
    ) ;



    create table updateview_fields (
        id varchar(255) not null,
        accessor varchar(255),
        control varchar(255),
        field_key varchar(255),
        param varchar(750),
        seq_no decimal(10,2),
        visibility varchar(20),
        updateview_metadata_id varchar(255),
        data_type varchar(50),
        parent varchar(255),
        param1 varchar(750),
        style varchar(255),
        mandatory tinyint(1) default '0',
        show_to_user tinyint(1) default '1',
        custom_js varchar(255),
        primary key (id)
    ) ;


    create table updateview_metadata (
        id varchar(255) not null,
        created_by varchar(255),
        created_time datetime(6),
        deleted BOOLEAN DEFAULT FALSE,
        last_updated_by varchar(255),
        last_updated_time datetime(6),
        version bigint,
        profile_code varchar(255),
        description varchar(255),
        entity varchar(255),
        js_file varchar(255),
        profile_level numeric(4),

        primary key (id)
    ) ;

    alter table updateview_buttons
       add constraint FKjue3hi6i7ula26p36crt285ue
       foreign key (updateview_metadata_id)
       references updateview_metadata (id);

    alter table updateview_fields
       add constraint FK8akf64il7p9rpsckqtf891p9b
       foreign key (updateview_metadata_id)
       references updateview_metadata (id) ;

    alter table updateview_metadata
       add constraint FKj7gpm63mwmdcgflxbakvv7y7a
       foreign key (profile_code)
       references profile (profile_code);



create table primary_user_role (
title varchar(255) primary key,
role_description  varchar(255) ,
profile_code varchar(255) ,
access_codes blob,
is_primary tinyint(1),
foreign key (profile_code) references profile (profile_code)
);










insert into updateview_metadata(id,profile_code,entity,profile_level) values ('USPRF','ROOT','UserProfile',1);

insert into updateview_fields(id,accessor,control,field_key,param,seq_no,visibility,updateview_metadata_id,data_type) values ('USPRF-CRUPWD','currentPassword','password','Current Password',null,1,'E','USPRF','String');
insert into updateview_fields(id,accessor,control,field_key,param,seq_no,visibility,updateview_metadata_id,data_type) values ('USPRF-PWD','password','password','Password',null,2,'E','USPRF','String');
insert into updateview_fields(id,accessor,control,field_key,param,seq_no,visibility,updateview_metadata_id,data_type) values ('USPRF-CNFPWD','confirmPassword','password','Confirm Password',null,3,'E','USPRF','String');
insert into updateview_fields(id,accessor,control,field_key,param,seq_no,visibility,updateview_metadata_id,data_type) values ('USPRF-ACTD','activeDivison','dropdown','Active Division','Warehouse',4,'E','USPRF','Numeric');

insert into updateview_buttons(id,button_class,inner_text,js_method,seq_no,visibility,updateview_metadata_id) values ('USPRF-UPD','btn btn-primary','Update Password','onUpdate',5,'E','USPRF');
insert into updateview_buttons(id,button_class,inner_text,js_method,seq_no,visibility,updateview_metadata_id) values ('USPRF-BTNAD','btn btn-success','Update Active Division','onWHUpdate',6,'E','USPRF');
insert into updateview_buttons(id,button_class,inner_text,js_method,seq_no,visibility,updateview_metadata_id) values ('USPRF-CLS','btn btn-secondary','Close','onClose',7,'E','USPRF');


insert into primary_user_role(title,role_description,profile_code,access_codes,is_primary) values ('System Administrator','Rights include to do any operation','ROOT','ADM-ADM,MST-MST,PRJ-PRJ,PRJ-ENG,PRJ-SENG,PRJ-SSUP,OPS-OPS,OPS-PRCM,OPS-STKP,DCS-DCS,DCS-DUS,FIN-FIN,FIN-FOP,HR-HR,HR-HOP',true);
insert into primary_user_role(title,role_description,profile_code,access_codes,is_primary) values ('Project Manager','Rights include to manage Projects','ROOT','MST-MST,PRJ-PRJ,PRJ-ENG,PRJ-SENG,PRJ-SSUP,OPS-OPS,OPS-PRCM,OPS-STKP,DCS-DCS,DCS-DUS',false);
insert into primary_user_role(title,role_description,profile_code,access_codes,is_primary) values ('Project Engineer','Rights include to do operations on Project','ROOT','MST-MST,PRJ-ENG,PRJ-SENG,PRJ-SSUP,OPS-OPS,OPS-PRCM,OPS-STKP,DCS-DCS,DCS-DUS',false);
insert into primary_user_role(title,role_description,profile_code,access_codes,is_primary) values ('Site Manager','Rights include to Oversee the operations in worksite','ROOT','MST-MST,PRJ-SENG,PRJ-SSUP,OPS-OPS,OPS-PRCM,OPS-STKP,DCS-DCS,DCS-DUS',false);
insert into primary_user_role(title,role_description,profile_code,access_codes,is_primary) values ('Site Supervisor','Rights include to execute operations on site','ROOT','OPS-OPS,OPS-PRCM,OPS-STKP',false);
insert into primary_user_role(title,role_description,profile_code,access_codes,is_primary) values ('HR Admin','To carry out HR Operations','ROOT','HR-HR,HR-HOP',false);

