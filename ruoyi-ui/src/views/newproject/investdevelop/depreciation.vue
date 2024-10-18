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
        <el-form
          ref="form"
          :model="tableInfo"
          label-width="80px"
          :inline="true"
          style="border:1px solid #C4E1C5;padding:20px;"
        >
          <!-- <el-form-item
            v-for="(item,index) in tableInfoItems"
            :key="index"
            :label="item.label"
            :prop="item.prop"
          >
            <el-select
              v-if="item.label=='折旧年限'"
              :v-model="tableInfo[item.prop]"
            >
              <el-option value="3"></el-option>
              <el-option value="5"></el-option>
              <el-option value="6"></el-option>
              <el-option value="7"></el-option>
              <el-option value="8"></el-option>
              <el-option value="10"></el-option>
              <el-option value="15"></el-option>
              <el-option value="20"></el-option>
              <el-option value="25"></el-option>
              <el-option value="30"></el-option>
            </el-select>
            <el-input
              v-else
              :v-model="tableInfo[item.prop]"
            ></el-input>
          </el-form-item> -->
          <el-form-item label="道路名称">
            <el-input v-model="tableInfo.道路名称"></el-input>
          </el-form-item>
          <el-form-item label="折旧年限">
            <el-select v-model="tableInfo.折旧年限">
              <el-option value="3"></el-option>
              <el-option value="5"></el-option>
              <el-option value="6"></el-option>
              <el-option value="7"></el-option>
              <el-option value="8"></el-option>
              <el-option value="10"></el-option>
              <el-option value="15"></el-option>
              <el-option value="20"></el-option>
              <el-option value="25"></el-option>
              <el-option value="30"></el-option>
            </el-select>
          </el-form-item>
        </el-form>
      </el-col>

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
          </div>
          <el-table
            :data="tableData"
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
import { saveTableData, list } from "@/api/create/investProject";
export default {
  name: "depreciation",
  components: {
    StepNavigation,
    VueForm,
  },
  data() {
    return {
      pageIndex: 4,
      projectId: 6,
      //添加的导航组件
      currentStep: 5,
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

      specificationOptions: [],
      // 表格数据
      tableData: [
        {
          类型: "道路折旧支出辅助计算表-不含税（单位：万元）",
          isHeader: true,
          isEdit: false,
        },
        {
          类型: "道路折旧支出合计",
          isHeader: false,
          isEdit: false,
          isProduct: 0,
          year0: "",
          year1: "",
          year2: "",
          year3: "",
          year4: "",
          year5: "",
          year6: "",
          year7: "",
        },
        {
          类型: "当年转资月份",
          isHeader: false,
          isEdit: true,
          isProduct: 0,
          year0: "",
          year1: "",
          year2: "",
          year3: "",
          year4: "",
          year5: "",
          year6: "",
          year7: "",
        },
        {
          类型: "各年建设类设备使用规模",
          isHeader: false,
          isEdit: true,
          isProduct: 0,
          year0: "",
          year1: "",
          year2: "",
          year3: "",
          year4: "",
          year5: "",
          year6: "",
          year7: "",
        },
        {
          类型: "第一年投资在各年的折旧",
          isHeader: false,
          isEdit: false,
          isProduct: 0,
          year0: "",
          year1: "",
          year2: "",
          year3: "",
          year4: "",
          year5: "",
          year6: "",
          year7: "",
        },
        {
          类型: "第二年投资在各年的折旧",
          isHeader: false,
          isEdit: false,
          isProduct: 0,
          year0: "",
          year1: "",
          year2: "",
          year3: "",
          year4: "",
          year5: "",
          year6: "",
          year7: "",
        },
        {
          类型: "第三年投资在各年的折旧",
          isHeader: false,
          isEdit: false,
          isProduct: 0,
          year0: "",
          year1: "",
          year2: "",
          year3: "",
          year4: "",
          year5: "",
          year6: "",
          year7: "",
        },
      ],
      tableData1: [],
      entity_name_list: [],

      tableInfo: {
        道路名称: "",
        折旧年限: "",
      },

      tableInfoItems: [
        { label: "道路名称", prop: "道路名称" },
        { label: "折旧年限", prop: "折旧年限" },
      ],

      entityTableTitle: [
        // { tableProp: "year0", label: "2024年" },
        // { tableProp: "year1", label: "2025年" },
        // { tableProp: "year2", label: "2026年" },
      ],
      tableTitle: [],
    };
  },
  created() {
    this.projectId = this.$route.query.projectId;
    let projectId = this.$route.query.projectId;
    let pageIndex = this.pageIndex;
    list({ projectId, pageIndex }).then((response) => {
      console.log(response);
      let attributeList = response.data.tableData.attributeData;
      let tableTitle = [];
      let Year = response.data.eval_start_years;
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
      this.tableTitle = tableTitle;
      let rowData = response.data.tableData.rowData;
      var index = 1;
      var cal = 0;
      for (var i = 0; i < rowData.length; i++) {
        if (cal == 1) {
          index = index + 1;
        }
        if (rowData[i].类型 == "第一年投资在各年的折旧") {
          cal = 1;
        }

        if (index > response.data.build_year) {
          rowData.splice(i, 10 - response.data.build_year + 1);
          break;
        }
      }
      this.tableData = rowData;

      // for(var k in response.data.tableData.formData){
      //   console.log(response.data.tableData.formData[k])
      //   this.tableInfo[k]=response.data.tableData.formData[k]
      // }

      for (var k in response.data.tableData.formData) {
        this.$set(this.tableInfo, k, response.data.tableData.formData[k]);
      }
      console.log(this.tableInfo);
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
    save() {
      var saveData = Object.assign([], this.tableData);
      var jsonObject = {};
      jsonObject["道路名称"] = this.tableInfo.name;
      jsonObject["折旧年限"] = this.tableInfo.year;
      saveData[0].formData = jsonObject;
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
              yearArray.push(line[obj]);
            }
          }
          console.log(yearArray);
          line["年份"] = yearArray;
        }
      }
      saveTableData(saveData, this.projectId).then((response) => {
        location.reload();
      });;
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
