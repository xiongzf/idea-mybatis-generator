package com.caojx.idea.plugin.common.properties;

import java.io.Serializable;

/**
 * Controller配置属性
 *
 * @author caojx
 * @date 2022/4/10 12:16 PM
 */
public class ControllerProperties implements Serializable {

    /**
     * 是否生成controller
     */
    private boolean selectedGenerateCheckBox;

    /**
     * controller路径
     */
    private String path;

    /**
     * controller包名
     */
    private String packageName;

    /**
     * controller 命名格式
     */
    private String namePattern;

    /**
     * controller 命名前缀
     */
    private String namePrefix;


    public String getNamePrefix() {
        return namePrefix;
    }

    public void setNamePrefix(String namePrefix) {
        this.namePrefix = namePrefix;
    }


    /**
     * controller swagger注解
     */
    private boolean selectedSwaggerCheckBox;

    public boolean isSelectedGenerateCheckBox() {
        return selectedGenerateCheckBox;
    }

    public void setSelectedGenerateCheckBox(boolean selectedGenerateCheckBox) {
        this.selectedGenerateCheckBox = selectedGenerateCheckBox;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getPackageName() {
        return packageName;
    }

    public void setPackageName(String packageName) {
        this.packageName = packageName;
    }

    public String getNamePattern() {
        return namePattern;
    }

    public void setNamePattern(String namePattern) {
        this.namePattern = namePattern;
    }

    public boolean isSelectedSwaggerCheckBox() {
        return selectedSwaggerCheckBox;
    }

    public void setSelectedSwaggerCheckBox(boolean selectedSwaggerCheckBox) {
        this.selectedSwaggerCheckBox = selectedSwaggerCheckBox;
    }
}
