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
      <el-col
        :span="24"
        class="card-box"
      >
        <el-card>
          <div
            slot="header"
            class="card-header"
          >
            <span><i class="el-icon-monitor">项目信息</i> </span>
            <div class="button-group">
              <el-button
                type="success"
                @click="add"
              >添加</el-button>
              <el-button
                type="primary"
                @click="delArr"
              >删除</el-button>
            </div>
          </div>
          <el-table
            ref="entityTable"
            :data="tableData"
            size="mini"
            style="width: 100%"
          >
            <el-table-column
              type="selection"
              width="50"
              align="center"
            />
            <el-table-column
              prop="id"
              label="序号"
              width="180"
            >
              <div
                class="item"
                slot-scope="scope"
              >
                <div
                  class="item__txt"
                  style="display:block"
                >{{scope.row.id+1}}</div>
              </div>
            </el-table-column>
            <el-table-column
              prop="productName"
              label="产品名称"
              width="200"
            >
              <div
                class="item"
                slot-scope="scope"
              >
                <el-select
                  class="item__input"
                  v-model="scope.row.productName"
                  placeholder="请选择"
                  style="width:160px"
                  @change="v=>getSpecification(v,scope)"
                >
                  <!-- @change="v=>getSpecification(v,scope.row)" -->
                  <el-option
                    v-for="item in productOptions"
                    :key="item"
                    :value="item"
                  >
                  </el-option>
                </el-select>
                <!-- <div class="item__txt">{{productLabel(scope.row.productName)}}</div> -->
              </div>
            </el-table-column>
            <el-table-column
              prop="specification"
              label="规格型号"
              width="200"
            >
              <div
                class="item"
                slot-scope="scope"
              >
                <el-select
                  class="item__input"
                  v-model="scope.row.specification"
                  placeholder="请选择"
                  style="width:160px"
                  @change="v=>getProductCode(v,scope)"
                >

                  <el-option
                    v-for="item in specificationOptions[scope.$index]"
                    :key="item"
                    :value="item"
                  >
                  </el-option>
                </el-select>
                <!-- <div class="item__txt">{{productLabel(scope.row.productName)}}</div> -->
              </div>
            </el-table-column>
            <el-table-column
              prop="productCode"
              label="产品代码"
              width="180"
            >
              <div
                class="item"
                slot-scope="scope"
              >
                <div
                  class="item__txt"
                  style="display:block"
                >{{scope.row.productCode}}</div>
              </div>
            </el-table-column>

            <el-table-column
              v-for="(item,index) in entityTableTitle"
              :key="index"
              :prop="item.tableProp"
              :label="item.label"
              width="180"
            >
            </el-table-column>
          </el-table>

          <el-table
            :data="tableData1"
            size="mini"
            style="width: 100%"
          >

            <el-table-column
              v-for="(item,index) in tableTitle"
              :key="index"
              :prop="item.tableProp"
              :label="item.label"
              width="220"
            >
              <div
                class="item"
                slot-scope="scope"
              >
                <el-input
                  v-if="scope.row.isEdit && item.tableProp!='类型' && item.tableProp!='合计'"
                  class="item__input"
                  v-model="scope.row[item.tableProp]"
                ></el-input>
                <div
                  v-else
                  :style="{
                  fontWeight: scope.row.isHeader? 'bold' : 'normal',
                  color: scope.row.isHeader ? 'red' : 'black'
                }"
                  class="item__txt"
                >{{scope.row[item.tableProp]}}</div>
              </div>
            </el-table-column>

          </el-table>
        </el-card>
      </el-col>
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
  background: var(--el-color-danger-light-9);
  color: var(--el-color-danger);
}

.scrollbar-flex-content {
  display: flex;
}
</style>

<style lang="scss">
.card-box {
  .el-card {
    .card-header {
      display: flex;
      justify-content: space-between;
      align-items: center;

      .button-group {
        display: flex;
        gap: 10px; /* 调整按钮间距 */
      }
    }
  }
}

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
import StepNavigation from "@/components/NewProject/StepNavigation";
import VueForm from "@lljj/vue-json-schema-form";
import {
  getSpecification,
  saveTableData,
  getProductCode,
  list,
  delProduct,
} from "@/api/create/investProject";
export default {
  name: "expenditure",
  components: {
    StepNavigation,
    VueForm,
  },
  data() {
    return {
      pageIndex: 3,
      projectId: 6,
      //添加的导航组件
      currentStep: 4,
      stepConfig: [
        { step: 1, path: "/newproject/investdevelop" },
        { step: 2, path: "/newproject/cost" },
        { step: 3, path: "/newproject/income" },
        // 添加更多步骤
        { step: 4, path: "/newproject/expenditure" },
        { step: 5, path: "/newproject/depreciation" },
        { step: 6, path: "/newproject/flow" },
        { step: 7, path: "/newproject/integrate" },
      ],

      checkedDetail: [],
      productOptions: [
        "双向双车道道路",
        "双向四车道道路",
        "双向六车道道路",
        "双向八车道道路",
        "单向单车道道路",
        "单向双车道道路",
        "快速路桥",
        "立交路桥",
        "高速路桥",
      ],
      specificationOptions: [],
      // 表格数据
      tableData: [
        // {
        //   id: 0,
        //   productName: "",
        //   productCode: "",
        //   specification: "",
        //   year0: "",
        //   year1: "",
        //   year2: "",
        // },
      ],
      tableData1: [],
      entity_name_list: [],

      entityTableTitle: [
        // { tableProp: "year0", label: "2024年" },
        // { tableProp: "year1", label: "2025年" },
        // { tableProp: "year2", label: "2026年" },
      ],
      tableTitle: [
        // { tableProp: "类型", label: "类型" },
        // { tableProp: "year0", label: "2024年" },
        // { tableProp: "year1", label: "2025年" },
        // { tableProp: "year2", label: "2026年" },
        // { tableProp: "合计", label: "合计" },
      ],
    };
  },
  created() {
    this.projectId = this.$route.query.projectId;
    let projectId = this.$route.query.projectId;
    let pageIndex = this.pageIndex;

    list({ projectId, pageIndex }).then((response) => {
      // this.entity_name_list=response.data.entity_name_list
      let move = -1;
      let id = 0;
      let startMoveIndex = 0;
      let entity_list = response.data.entity_name_list;
      console.log(response);
      for (var i = 0; i < response.data.tableData.rowData.length; i++) {
        let jsonLine = response.data.tableData.rowData[i];
        if (jsonLine.isHeader) {
          if (jsonLine.isTotal == 1) {
            jsonLine.EntityRelated = false;
            startMoveIndex = i + 1;
            move = 1;
            continue;
          }
        }
        if (move == 1) {
          // console.log(111111)
          // console.log(jsonLine)
          if (jsonLine.isProduct == 1) {
            jsonLine.productCode = "";
            jsonLine.productName = "";
            jsonLine.id = id;
            console.log(jsonLine);
            if (jsonLine.类型 != null) {
              let sArray = jsonLine.类型.split(" ");
              jsonLine.productCode = sArray[1];
              jsonLine.productName = sArray[0];
              for (var j = 0; j < entity_list.length; j++) {
                let entity = entity_list[j];
                if (entity.entityCode == sArray[1]) {
                  jsonLine.specification = entity.specification;
                }
              }
            }
            this.tableData.push(jsonLine);
            id = id + 1;
          } else {
            move = 0;
          }
        }
      }
      response.data.tableData.rowData.splice(startMoveIndex, id);
      this.tableData1 = response.data.tableData.rowData;
      console.log(this.tableData);
      let attributeList = response.data.tableData.attributeData;
      let tableTitle = [];
      let Year = response.data.build_start_year;
      Year = Year.slice(0, 4);
      Year = parseInt(Year);
      for (var i = 0; i < attributeList.length; i++) {
        if (attributeList[i] == "年份") {
          for (var j = 0; j < response.data.eval_year; j++) {
            var jsObject = { tableProp: "year" + j, label: Year + "年" };
            Year = Year + 1;
            tableTitle.push(jsObject);
            this.entityTableTitle.push(jsObject);
          }
        } else {
          var jsObject = {
            tableProp: attributeList[i],
            label: attributeList[i],
          };
          tableTitle.push(jsObject);
        }
      }
      console.log(tableTitle);
      this.tableTitle = tableTitle;
    });
  },

  // id: 0,
  // productName: "",
  // productCode: "",
  // specification: "",
  // year0: "",
  // year1: "",
  // year2: "",

  computed: {
    productLabel() {
      return (val) => {
        return this.productOptions.find((o) => o.value === val).label;
      };
    },

    //导航组件更新页面步骤
    totalSteps() {
      return this.stepConfig.length;
    },
    currentStepConfig() {
      return this.stepConfig.find((config) => config.step === this.currentStep);
    },
  },
  methods: {
    updateInputTable(val, s) {
      console.log(s.row);
      let indexList = [];
      for (var i = 0; i < this.tableData1.length; i++) {
        if (this.tableData1[i].EntityRelated) {
          indexList.push(i + s.$index + 1);
        }
      }
      for (var i = 0; i < indexList.length; i++) {
        this.tableData1[indexList[i]].类型 = s.row.productName + " " + val;
      }
    },
    getSpecification(val, s) {
      console.log(s.row);
      this.specificationOptions[s.$index] = [];
      delete s.row.specification;
      let productName = val;
      console.log(productName);
      getSpecification({ productName }).then((response) => {
        console.log(response);
        if (response.data.hasSpecification) {
          this.$set(
            this.specificationOptions,
            s.$index,
            response.data.specificationList
          );
        } else {
          s.row.productCode = response.data.productCode;
          this.updateInputTable(response.data.productCode, s);
        }
      });
    },

    getProductCode(val, s) {
      let productName = s.row.productName;
      console.log(val);
      let specification = val;
      getProductCode({ productName, specification }).then((response) => {
        s.row.productCode = response.data.productCode;
        this.updateInputTable(s.row.productCode, s);
      });
    },
    save() {
      var saveData = Object.assign([], this.tableData1);
      var totalData = Object.assign([], this.tableData);
      console.log(saveData);
      //var projectId=this.projectId
      var projectId = localStorage.getItem("projectId");
      console.log(projectId);
      let pushIndex = 0;
      for (var i = 0; i < saveData.length; i++) {
        if (saveData[i].isTotal == 1) {
          saveData[i].EntityRelated = 1;
          pushIndex = i + 1;
          break;
        }
      }
      for (var i = 0; i < totalData.length; i++) {
        totalData[i].类型 =
          totalData[i].productName + " " + totalData[i].productCode;
        saveData.splice(pushIndex, 0, totalData[i]);
        pushIndex = pushIndex + 1;
      }
      console.log(saveData);

      for (var i = 0; i < saveData.length; i++) {
        var line = saveData[i];
        if (line.EntityRelated == "1") {
          line.EntityRelated = true;
        } else {
          line.EntityRelated = false;
        }
        if (line.hasOwnProperty("year0")) {
          delete line.year;
          var yearArray = [];
          for (var obj in line) {
            if (obj.includes("year")) {
              var index = obj.slice(-1);
              yearArray[index] = line[obj];
            }
          }
          console.log(yearArray);
          line["年份"] = yearArray;
        }
      }
      saveTableData(saveData, projectId).then((response) => {
        this.$message.success('保存成功');
        location.reload();
      });
    },
    add() {
      let newproductLine = {
        id: this.tableData.length,
        productName: "",
        productCode: "",
        specification: "",
        unit: "",
        isHeader: false,
        isEdit: true,
        isProduct: 1,
      };
      for (var i = 0; i < this.entityTableTitle.length; i++) {
        console.log(this.entityTableTitle[i]);
        newproductLine[this.entityTableTitle[i].tableProp] = "";
      }
      let nowproductLength = this.tableData.length;
      newproductLine.id = this.tableData.length;
      this.tableData.push(newproductLine);
      let indexList = [];
      let addedLine = 0;
      for (var i = 0; i < this.tableData1.length; i++) {
        if (this.tableData1[i].EntityRelated) {
          indexList.push(i + nowproductLength + addedLine + 1);
          addedLine = addedLine + 1;
        }
      }
      for (var i = 0; i < indexList.length; i++) {
        var Line = Object.assign({}, this.tableData1[indexList[i] - 1]);
        Line.类型 = "";
        this.tableData1.splice(indexList[i], 0, Line);
      }
      console.log(this.tableData);
    },
    delArr() {
      console.log(this.$refs.entityTable.selection);

      this.$confirm("此操作将永久删除该项目, 是否继续?", "提示", {
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        type: "warning",
      })
        .then(() => {
          if (
            this.$refs.entityTable.selection.length == this.tableData.length
          ) {
            this.$message.info("不能删除所有产品");
            return;
          } else if (this.$refs.entityTable.selection.length == 0) {
            this.$message.info("删除列表为空");
          }
          let indexList = [];
          let delIndex = 0;
          for (var i = 0; i < this.tableData1.length; i++) {
            if (this.tableData1[i].EntityRelated) {
              for (
                var j = 0;
                j < this.$refs.entityTable.selection.length;
                j++
              ) {
                indexList.push(
                  i + this.$refs.entityTable.selection[j].id + 1 - delIndex
                );
                delIndex++;
              }
            }
          }
          for (var i = 0; i < indexList.length; i++) {
            this.tableData1.splice(indexList[i], 1);
          }
          let delproductCodes = [];
          for (
            var i = this.$refs.entityTable.selection.length - 1;
            i >= 0;
            i--
          ) {
            let index = this.$refs.entityTable.selection[i].id + 1;
            if (this.$refs.entityTable.selection[i].productCode != "") {
              delproductCodes.push(
                this.$refs.entityTable.selection[i].productCode
              );
            }
            this.tableData.splice(index - 1, 1);
          }
          for (var i = 0; i < this.$refs.entityTable.data.length; i++) {
            this.$refs.entityTable.data[i].id = i;
          }
          delProduct(delproductCodes, this.projectId);
        })
        .catch(() => {});
    },

    async next() {
      this.navigateStep(1);
    },

    async previous() {
      this.navigateStep(-1);
    },
    async navigateStep(direction) {
         const newStep = this.currentStep + direction;
      if (newStep >= 1 && newStep <= this.totalSteps) {
        this.currentStep = newStep;
        const newPath = this.stepConfig.find(
          (config) => config.step === this.currentStep
        ).path;
        this.$router
          .push({ path: newPath, query: { projectId: this.projectId } })
          .catch(() => {});
      }
    },
  },
};
</script>
