/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     3/31/2017 5:23:36 PM                         */
/*==============================================================*/


drop table if exists CTHD;

drop table if exists DONHANG;

drop table if exists HTTHANHTOAN;

drop table if exists KHUYENMAI;

drop table if exists LOAISANPHAM;

drop table if exists NHASANXUAT;

drop table if exists ROLE;

drop table if exists ROLE_USER;

drop table if exists SANPHAM;

drop table if exists SP_KM;

drop table if exists USER;

/*==============================================================*/
/* Table: CTHD                                                  */
/*==============================================================*/
create table CTHD
(
   SP_ID                int not null,
   DH_ID                int not null,
   primary key (SP_ID, DH_ID)
);

/*==============================================================*/
/* Table: DONHANG                                               */
/*==============================================================*/
create table DONHANG
(
   DH_ID                int not null,
   U_ID                 int,
   HTTT_ID              int,
   DH_NGAYDAT           date not null,
   DH_NGAYGIAO          date,
   DH_TRANGTHAI         varchar(50) not null,
   primary key (DH_ID)
);

/*==============================================================*/
/* Table: HTTHANHTOAN                                           */
/*==============================================================*/
create table HTTHANHTOAN
(
   HTTT_ID              int not null,
   HTTT_TEN             varchar(50) not null,
   HTTT_GHICHU          varchar(100) not null,
   primary key (HTTT_ID)
);

/*==============================================================*/
/* Table: KHUYENMAI                                             */
/*==============================================================*/
create table KHUYENMAI
(
   KM_ID                int not null,
   KM_TEN               varchar(50) not null,
   KM_NOIDUNG           varchar(100) not null,
   primary key (KM_ID)
);

/*==============================================================*/
/* Table: LOAISANPHAM                                           */
/*==============================================================*/
create table LOAISANPHAM
(
   LSP_ID               int not null,
   LSP_TEN              varchar(50) not null,
   primary key (LSP_ID)
);

/*==============================================================*/
/* Table: NHASANXUAT                                            */
/*==============================================================*/
create table NHASANXUAT
(
   NSX_ID               int not null,
   NSX_TEN              varchar(50) not null,
   NSX_DIACHI           varchar(100) not null,
   NSX_EMAIL            varchar(50) not null,
   NSX_SDT              varchar(50) not null,
   primary key (NSX_ID)
);

/*==============================================================*/
/* Table: ROLE                                                  */
/*==============================================================*/
create table ROLE
(
   R_ID                 int not null,
   R_ROLEL              varchar(50) not null,
   primary key (R_ID)
);

/*==============================================================*/
/* Table: ROLE_USER                                             */
/*==============================================================*/
create table ROLE_USER
(
   U_ID                 int not null,
   R_ID                 int not null,
   primary key (U_ID, R_ID)
);

/*==============================================================*/
/* Table: SANPHAM                                               */
/*==============================================================*/
create table SANPHAM
(
   SP_ID                int not null,
   LSP_ID               int,
   NSX_ID               int,
   SP_TEN               varchar(50) not null,
   SP_GIA               varchar(50) not null,
   SP_HINH              varchar(255) not null,
   SP_QRCODE            varchar(255) not null,
   SP_MOTA              varchar(255) not null,
   primary key (SP_ID)
);

/*==============================================================*/
/* Table: SP_KM                                                 */
/*==============================================================*/
create table SP_KM
(
   SP_ID                int not null,
   KM_ID                int not null,
   primary key (SP_ID, KM_ID)
);

/*==============================================================*/
/* Table: USER                                                  */
/*==============================================================*/
create table USER
(
   U_ID                 int not null,
   U_EMAIL              varchar(50) not null,
   U_PASSWORD           varchar(50) not null,
   U_TEN                varchar(50),
   U_DIACHI             varchar(100),
   U_SDT                varchar(50),
   primary key (U_ID)
);

alter table CTHD add constraint FK_CTHD foreign key (SP_ID)
      references SANPHAM (SP_ID) on delete restrict on update restrict;

alter table CTHD add constraint FK_CTHD2 foreign key (DH_ID)
      references DONHANG (DH_ID) on delete restrict on update restrict;

alter table DONHANG add constraint FK_DH_KM foreign key (HTTT_ID)
      references HTTHANHTOAN (HTTT_ID) on delete restrict on update restrict;

alter table DONHANG add constraint FK_USER_DH foreign key (U_ID)
      references USER (U_ID) on delete restrict on update restrict;

alter table ROLE_USER add constraint FK_ROLE_USER foreign key (U_ID)
      references USER (U_ID) on delete restrict on update restrict;

alter table ROLE_USER add constraint FK_ROLE_USER2 foreign key (R_ID)
      references ROLE (R_ID) on delete restrict on update restrict;

alter table SANPHAM add constraint FK_LSP_SP foreign key (LSP_ID)
      references LOAISANPHAM (LSP_ID) on delete restrict on update restrict;

alter table SANPHAM add constraint FK_NSX_SP foreign key (NSX_ID)
      references NHASANXUAT (NSX_ID) on delete restrict on update restrict;

alter table SP_KM add constraint FK_SP_KM foreign key (SP_ID)
      references SANPHAM (SP_ID) on delete restrict on update restrict;

alter table SP_KM add constraint FK_SP_KM2 foreign key (KM_ID)
      references KHUYENMAI (KM_ID) on delete restrict on update restrict;

