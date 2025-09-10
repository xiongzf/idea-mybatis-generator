<#if mapperPackage?default("")?trim?length gt 1>
package ${mapperPackage};

</#if>
import org.apache.ibatis.annotations.Mapper;
<#if isSelectedEnableUpdateByExampleCheckBox>
import org.apache.ibatis.annotations.Param;
</#if>
<#if isSelectedEnableSelectByExampleCheckBox>
import java.util.List;
</#if>
<#if entityPackage?default("")?trim?length gt 1>
import ${entityFullClassName};
</#if>
<#if superMapperClass?? && superMapperClass !="" && superMapperClassName != "Mapper">
import ${superMapperClass};
</#if>
<#if entityExamplePackage?default("")?trim?length gt 1 && (isSelectedEnableSelectByExampleCheckBox || isSelectedEnableDeleteByExampleCheckBox || isSelectedEnableCountByExampleCheckBox || isSelectedEnableUpdateByExampleCheckBox)>
import ${entityExampleFullClassName};
</#if>

/**
* ${table.comment!} Mapper
*
* @author ${author!}
* @since ${.now?string("yyyy-MM-dd HH:mm")}
*/
@Mapper
<#if superMapperClass?? && superMapperClass !="" && superMapperClassName == "Mapper">
public interface ${mapperName} extends ${superMapperClass}<${entityName}> {
<#elseif superMapperClass?? && superMapperClass !="" && superMapperClassName != "Mapper">
public interface ${mapperName} extends ${superMapperClassName}<${entityName}> {
<#else>
public interface ${mapperName} {
</#if>
<#if isSelectedEnableSelectByExampleCheckBox && table.haveBlobField>

    /**
     * 查询记录包含BLOB信息
     *
     * @param example 查询条件
     * @return 列表
     */
    List<${entityName}> selectByExampleWithBLOBs(${entityExampleName} example);
</#if>
<#if isSelectedEnableSelectByExampleCheckBox>

    /**
     * 列表查询
     *
     * @param example 条件
     * @return 列表
     */
    List<${entityName}> selectByExample(${entityExampleName} example);
</#if>
<#if isSelectedEnableSelectByPrimaryKeyCheckBox && table.havePrimaryKey>

    /**
     * 根据主键id查询
     *
     * @param ${table.primaryKeyName}
     * @return 记录信息
     */
    ${entityName} selectByPrimaryKey(${table.primaryKeyType.simpleName} ${table.primaryKeyName});
</#if>
<#if isSelectedEnableDeleteByPrimaryKeyCheckBox && table.havePrimaryKey>

    /**
     * 根据主键删除数据
     *
     * @param ${table.primaryKeyName}
     * @return 数量
     */
    int deleteByPrimaryKey(${table.primaryKeyType.simpleName} ${table.primaryKeyName});
</#if>
<#if isSelectedEnableDeleteByExampleCheckBox>

    /**
     * 删除数据
     *
     * @param example 条件
     * @return 删除数量
     */
    int deleteByExample(${entityExampleName} example);
</#if>
<#if isSelectedEnableInsertCheckBox>

    /**
     * 插入数据库记录（不建议使用）
     *
     * @param record
     */
    int insert(${entityName} record);
</#if>
<#if isSelectedEnableInsertCheckBox>

    /**
     * 插入数据库记录（建议使用）
     *
     * @param record 插入数据
     * @return 插入数量
     */
    int insertSelective(${entityName} record);
</#if>
<#if isSelectedEnableCountByExampleCheckBox>

    /**
     * 计数
     *
     * @param example 条件
     * @return 数量
     */
    long countByExample(${entityExampleName} example);
</#if>
<#if isSelectedEnableUpdateByExampleCheckBox>

    /**
     * 修改数据
     *
     * @param record  更新值
     * @param example 条件
     * @return 更新数量
     */
    int updateByExampleSelective(@Param("record") ${entityName} record, @Param("example") ${entityExampleName} example);
</#if>
<#if isSelectedEnableUpdateByExampleCheckBox && table.haveBlobField>

    /**
     * 更新记录包含BLOB
     *
     * @param record  更新值
     * @param example 条件
     * @return 更新数量
     */
    int updateByExampleWithBLOBs(@Param("record") ${entityName} record, @Param("example") ${entityExampleName} example);
</#if>
<#if isSelectedEnableUpdateByExampleCheckBox>

    /**
     * 修改数据
     *
     * @param record  更新值
     * @param example 条件
     * @return 更新数量
     */
    int updateByExample(@Param("record") ${entityName} record, @Param("example") ${entityExampleName} example);
</#if>
<#if isSelectedEnableUpdateByPrimaryKeyCheckBox && table.havePrimaryKey>

    /**
     * 修改数据(推荐使用)
     *
     * @param record 更新值
     * @return 更新数量
     */
    int updateByPrimaryKeySelective(${entityName} record);
</#if>
<#if isSelectedEnableUpdateByPrimaryKeyCheckBox && table.havePrimaryKey && table.haveBlobField>

    /**
     * 根据主键更新数据
     *
     * @param record 更新值
     * @return 更新数量
     */
    int updateByPrimaryKeyWithBLOBs(${entityName} record);
</#if>
<#if isSelectedEnableUpdateByPrimaryKeyCheckBox && table.havePrimaryKey>

    /**
     * 根据主键更新数据
     *
     * @param record 更新值
     * @return 更新数量
     */
    int updateByPrimaryKey(${entityName} record);
</#if>
}
