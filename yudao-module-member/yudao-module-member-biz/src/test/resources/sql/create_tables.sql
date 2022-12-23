CREATE TABLE IF NOT EXISTS "member_user"  (
    "id" bigint NOT NULL GENERATED BY DEFAULT AS IDENTITY COMMENT '编号',
    "nickname" varchar(30)  NOT NULL DEFAULT '' COMMENT '用户昵称',
    "avatar" varchar(255)  NOT NULL DEFAULT '' COMMENT '头像',
    "status" tinyint NOT NULL COMMENT '状态',
    "mobile" varchar(11)  NOT NULL COMMENT '手机号',
    "password" varchar(100)  NOT NULL DEFAULT '' COMMENT '密码',
    "register_ip" varchar(32)  NOT NULL COMMENT '注册 IP',
    "login_ip" varchar(50) NULL DEFAULT '' COMMENT '最后登录IP',
    "login_date" datetime NULL DEFAULT NULL COMMENT '最后登录时间',
    "creator" varchar(64)  NULL DEFAULT '' COMMENT '创建者',
    "create_time" datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    "updater" varchar(64)  NULL DEFAULT '' COMMENT '更新者',
    "update_time" datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    "deleted" bit(1) NOT NULL DEFAULT '0' COMMENT '是否删除',
    "tenant_id" bigint not null default  '0',
    PRIMARY KEY ("id")
) COMMENT '会员表';

-- inf 开头的 DB
CREATE TABLE IF NOT EXISTS "inf_file" (
    "id" varchar(188) NOT NULL,
    "type" varchar(63) DEFAULT NULL,
    "content" blob NOT NULL,
    "creator" varchar(64) DEFAULT '',
    "create_time" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updater" varchar(64) DEFAULT '',
    "update_time" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deleted" bit NOT NULL DEFAULT FALSE,
    PRIMARY KEY ("id")
) COMMENT '文件表';

CREATE TABLE IF NOT EXISTS "member_address" (
    "id" bigint(20) NOT NULL GENERATED BY DEFAULT AS IDENTITY,
    "user_id" bigint(20) NOT NULL,
    "name" varchar(10) NOT NULL,
    "mobile" varchar(20) NOT NULL,
    "area_id" bigint(20) NOT NULL,
    "post_code" varchar(16) NOT NULL,
    "detail_address" varchar(250) NOT NULL,
    "defaulted" bit NOT NULL,
    "create_time" datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "creator" varchar(64) DEFAULT '',
    "update_time" datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    "deleted" bit NOT NULL DEFAULT FALSE,
    "updater" varchar(64) DEFAULT '',
    PRIMARY KEY ("id")
) COMMENT '用户收件地址';

