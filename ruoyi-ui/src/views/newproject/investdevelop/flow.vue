<template>
  <div class="app-container">
    <!-- 导航组件 -->
    <StepNavigation
      :steps="['基本信息', '投资明细', '收入明细','支出明细','折旧摊销','现金流','综合评估']"
      :current-step="currentStep"
      @previous="previous"
      @save="save"
      @next="next"
    />
    <el-row>
      <el-card>
        <el-col :span="24">
          <div>
            <el-form ref="elForm" :model="fixedData" :rules="rules" size="small" label-width="91px">
              <el-row gutter="11">
                <!-- 折现率，靠左对齐 -->
                <el-col :span="12" >
                  <el-form-item label="折现率" prop="discountRate" style="float: left">
                    <el-input
                      v-model="fixedData.discountRate"
                      readonly
                      :disabled='true'
                      :style="{ width: '100%' }"
                    ></el-input>
                  </el-form-item>
                </el-col>

                <!-- 审定税率，靠右对齐 -->
                <el-col :span="12">
                  <el-form-item label="审定税率" prop="taxRate"  style="float: right">
                    <el-input
                      v-model="fixedData.taxRate"
                      readonly
                      :disabled='true'
                      :style="{ width: '100%' }"
                    ></el-input>
                  </el-form-item>
                </el-col>
              </el-row>
            </el-form>
          </div>
        </el-col>
      </el-card>
    </el-row>


    <el-row>
      <el-row>
        <el-card>
          <div
            :title="fixedData.tableName"
            style="color: #00afff; font-size:
           50px; font-weight: bold;">
            {{ fixedData.tableName }}
          </div>
          <el-divider></el-divider>
          <el-col :span="24">
            <el-card>
              <el-table :data="tableData" size="mini" style="width: 100%">
                <el-table-column
                  v-for="(item, index) in tableTitle"
                  :key="index"
                  :prop="item.prop"
                  :label="item.label"
                  :width="item.width"
                >
                  <template v-slot="scope">
                    <!-- 当单元格可编辑时显示可编辑的输入框 -->
                    <el-input
                      v-if="isCellEditable(scope.row, scope.column)"
                      :style="{width: '50%', lineHeight: 'normal', height: 'auto'}"
                      v-model="scope.row[item.prop]"
                    ></el-input>

                    <!-- 当单元格不可编辑时且字段不是 '序号' 或 '类型'，显示只读的输入框 -->
                    <el-input
                      v-else-if="item.prop !== '序号' && item.prop !== '类型'"
                      readonly
                      :disabled="true"
                      :style="{width: '50%'}"
                      v-model="scope.row[item.prop]"
                    ></el-input>

                    <!-- 否则显示普通的 div 元素 -->
                    <div
                      v-else
                      :style="{width: '50%'}"
                    >{{ scope.row[item.prop] }}</div>
                  </template>
                </el-table-column>

              </el-table>
            </el-card>
          </el-col>
        </el-card>
      </el-row>
    </el-row>
  </div>
</template>

<style scoped>
.scrollbar-demo-item {
  flex-shrink: 0;
  display: flex;
  /* align-items: center;
  justify-content: center; */
  width: 10%;
  height: 100%;
  margin: 10px;
  /* text-align: center; */
  border-radius: 4px;
}

.scrollbar-flex-content {
  display: flex;
}
</style>

<style lang="scss">
.item {
  .item__input {
    display: block;
    width: 120px;
    /* 调整elementUI中样式 如果不需要调整请忽略 */
    .el-input__inner {
      height: 24px !important;
    }
    /* 调整elementUI中样式 如果不需要调整请忽略 */
    .el-input__suffix {
      i {
        font-size: 12px !important;
        line-height: 26px !important;
      }
    }
  }
  .item__txt {
    display: block;
    box-sizing: border-box;
    border: 1px solid transparent;
    width: 160px;
    line-height: 24px;
    padding: 0 8px;
  }
  .item__txt--hover {
    border: 1px solid #dddddd;
    border-radius: 4px;
    cursor: text;
  }
}
</style>

<script>
import VueForm from "@lljj/vue-json-schema-form";
import {computeAndSave, getTable} from "@/api/create/flow";
import tab from "@/plugins/tab";
import StepNavigation from "@/components/NewProject/StepNavigation.vue";
export default {
  name: "flow",
  computed: {
    tab() {
      return tab
    },
    totalSteps() {
      return this.stepConfig.length;
    },
    currentStepConfig() {
      return this.stepConfig.find(config => config.step === this.currentStep);
    },
  },
  components: {
    StepNavigation,
    VueForm,
  },
  data() {
    return {

      //添加的导航组件
      currentStep: 6,
      stepConfig: [
        { step: 1, path: '/newproject/investdevelop' },
        { step: 2, path: '/newproject/cost' },
        { step: 3, path: '/newproject/income' },
        // 添加更多步骤
        { step: 4, path: '/newproject/expenditure' },
        { step: 5, path: '/newproject/depreciation' },
        { step: 6, path: '/newproject/flow' },
        { step: 7, path: '/newproject/integrate' },
      ],

      fixedData: {},
      tableName: '',
      tableData: [],
      tableTitle: [],
      rawOfTable: 0
    };
  },
  created() {
    this.getTableForm();
  },
  methods: {
    getTableForm() {

      this.projectId = this.$route.query.projectId;
      let projectInfoId = this.$route.query.projectId;
      let pageIndex = 5
      getTable(projectInfoId,pageIndex).then((response) => {
        console.log("首次跳转渲染")
        console.log(response);
        this.fixedData.discountRate = response.data.fixedAttrMap['折现率'][0];
        this.fixedData.taxRate = response.data.fixedAttrMap['审定税率'][0]; // 修正为 '审定税率'
        this.fixedData.tableName = response.data.tableName;
        this.yearList = response.data.yearList;
        this.rawOfTable =  response.data.rowOfTable
        this.renderTableTitle(response.data.attrNameList)
        this.renderTableData(response.data.attrMap, this.rawOfTable)
      });
    },
    renderTableTitle(titleArray){
      console.log(titleArray)
      for(let i = 0; i < titleArray.length; i++){
        let titleItem = {};
        titleItem.prop = titleArray[i]
        titleItem.label = titleArray[i]
        this.tableTitle.push(titleItem)
      }
    },
    renderTableData(attrMap, rowNum){
      console.log(attrMap)
      let count = 1;
      for(let i=0; i < rowNum; i++){
        const attrList = Object.keys(attrMap);
        const tableRow = {};
        tableRow.id = count
        for(let attr of attrList){
          tableRow[attr] =  attrMap[attr][i]
          if(attr === "金额（含税）" || attr === "序号"){
            tableRow.isEdit = false;
          }
        }
        count = count + 1
        this.tableData.push(tableRow)
      }
    },
    isCellEditable(row, column) {
      if(row.id <= 3 && column.property !== '序号' && column.property !== '金额（含税）' && column.property !== '类型'){
        return true;
      }
      return false;
    },
    save() {
      const tableDataToSave = {} // 传给后端的对象
      const flowLineObjList = [] // 重新组装的表格所有行
      for (let i = 0; i < this.tableData.length; i++) {
        const flowLineObj = {} // 当前行对象
        let yearDataList = [] // 当前行每年的数据
        for (let key in this.tableData[i]) {
          if (!key.endsWith("年")) {
            flowLineObj[key] = this.tableData[i][key]
          } else {
            yearDataList.push(this.tableData[i][key])
          }
        }
        flowLineObj["yearDataList"] = yearDataList
        flowLineObjList.push(flowLineObj)
      }
      tableDataToSave["flowLineObjList"] = flowLineObjList
      tableDataToSave["discountRate"] = this.fixedData.discountRate
      tableDataToSave["taxRate"] = this.fixedData.taxRate
      console.log(tableDataToSave)
      computeAndSave(tableDataToSave).then((response) => {
        // 检查响应是否包含警告信息
        if (response.data && response.data.warn) {
          // 如果存在警告信息，显示警告
          this.$message.warning('数据已存在，请勿重复提交！');
        } else {
          // 否则，清空当前表格数据并重新渲染
          this.tableData.length = 0;
          this.renderTableData(response.data.attrMap, this.rawOfTable);
        }
      });
    },

    async navigateStep(direction) {
      const newStep = this.currentStep + direction;
      if (newStep >= 1 && newStep <= this.totalSteps) {
        this.currentStep = newStep;
        const newPath = this.stepConfig.find(config => config.step === this.currentStep).path;
        this.$router.push({ path: newPath, query: { projectId: this.projectId },}).catch(() => {});
      }
    },

    async next() {
      await this.navigateStep(1);
    },

    async previous() {
      await this.navigateStep(-1);
    },

  }
};
</script>

