package com.caojx.idea.plugin.common.pojo;

import org.apache.commons.lang3.StringUtils;

/**
 * 数据库信息不带密码
 * <p>
 * 提示：保留了一些非url属性是为了兼容老版本
 *
 * @author caojx
 * @date 2022/4/10 4:00 PM
 */
public class DatabaseWithOutPwd {

    /**
     * 数据库类型
     */
    private String databaseType;

    /**
     * 主机
     */
    private String host;

    /**
     * 端口
     */
    private Integer port;

    /**
     * 数据库
     */
    private String databaseName;

    /**
     * 用户名
     */
    private String userName;

    /**
     * 显示的数据库名称
     */
    private String identifierName;

    /**
     * 数据库连接url
     */
    private String url;

    private String tablePrefix;

    public String getTablePrefix() {
        return tablePrefix;
    }

    public void setTablePrefix(String tablePrefix) {
        this.tablePrefix = tablePrefix;
    }

    public DatabaseWithOutPwd() {
    }

    public DatabaseWithOutPwd(String databaseType, String host, Integer port, String databaseName, String userName, String tablePrefix) {
        this.databaseType = databaseType;
        this.host = host;
        this.port = port;
        this.databaseName = databaseName;
        this.userName = userName;
        this.tablePrefix = tablePrefix;
        this.identifierName = databaseName + "@" + host + ":" + port + ":" + databaseType;
    }

    public String getDatabaseType() {
        return databaseType;
    }

    public void setDatabaseType(String databaseType) {
        this.databaseType = databaseType;
    }

    public String getHost() {
        return host;
    }

    public void setHost(String host) {
        this.host = host;
    }

    public Integer getPort() {
        return port;
    }

    public void setPort(Integer port) {
        this.port = port;
    }

    public String getDatabaseName() {
        return databaseName;
    }

    public void setDatabaseName(String databaseName) {
        this.databaseName = databaseName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getIdentifierName() {
        if (StringUtils.isBlank(identifierName)) {
            identifierName = databaseName + "@" + host + ":" + port + ":" + databaseType;
        }
        return identifierName;
    }

    public void setIdentifierName(String identifierName) {
        this.identifierName = identifierName;
    }

    public String getUrl() {
        if (StringUtils.isNotBlank(this.url)) {
            return this.url;
        }
        return "jdbc:mysql://" + this.host + ":" + this.port + "/" + this.databaseName;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
