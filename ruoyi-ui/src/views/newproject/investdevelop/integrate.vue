<template>
  <div class="layout">
    <el-card class="box-card">
      <StepNavigation :steps="['基本信息', '投资明细', '收入明细', '支出明细', '折旧摊销', '现金流', '综合评估']" :current-step="currentStep"
        @previous="previous" @save="save" @next="next" />

      <div class="tableName">項目基本概況及评估结果</div>
      <div style="color: rgb(148, 148, 148); text-align: right; margin-right: 10px;">单位：万元</div>
      <!-- 基本概况及评估结果 -->
      <div class="form-tables">
        <el-form inline :model="baseForm">
          <div v-for="(item, index) in formTitle" :key="index" class="form-row">
            <template v-if="item.length === 2">
              <el-col :span="12" class="form-cell">
                <el-form-item :label="item[0]" class="text-left" style="width: 50%;">
                  <template v-if="index === 4">
                    <el-input v-model="baseForm[Object.keys(baseForm)[14]]" placeholder="默认"
                      class="paperview-input-text" :readonly="true"></el-input>
                  </template>
                  <template v-else>
                    <el-input v-model="baseForm[Object.keys(baseForm)[index]]" placeholder="默认"
                      class="paperview-input-text" :readonly="true"></el-input>
                  </template>
                </el-form-item>
              </el-col>
              <el-col :span="12" class="form-cell">
                <el-form-item :label="item[1]" style="width: 50%;">
                  <template v-if="index === 4">
                    <el-input v-model="baseForm[Object.keys(baseForm)[15]]" placeholder="默认"
                      class="paperview-input-text" :readonly="true"></el-input>
                  </template>
                  <template v-else>
                    <el-input v-model="baseForm[Object.keys(baseForm)[index + 1]]" placeholder="默认"
                      class="paperview-input-text" :readonly="true"></el-input>
                  </template>
                </el-form-item>
              </el-col>
            </template>
            <template v-if="item.length === 4">
              <template v-if="index === 3">
                <el-col :span="6" class="form-cell">
                  <el-form-item :label="item[0]">
                    <el-input v-model="baseForm[Object.keys(baseForm)[10]]" placeholder="默认"
                      class="paperview-input-text" :readonly="true"></el-input>
                  </el-form-item>
                </el-col>
                <el-col :span="6" class="form-cell">
                  <el-form-item :label="item[1]">
                    <el-input v-model="baseForm[Object.keys(baseForm)[11]]" placeholder="默认"
                      class="paperview-input-text" :readonly="true"></el-input>
                  </el-form-item>
                </el-col>
                <el-col :span="6" class="form-cell">
                  <el-form-item :label="item[2]">
                    <el-input v-model="baseForm[Object.keys(baseForm)[12]]" placeholder="默认"
                      class="paperview-input-text" disabled></el-input>
                  </el-form-item>
                </el-col>
                <el-col :span="6" class="form-cell">
                  <el-form-item :label="item[3]">
                    <el-input v-model="baseForm[Object.keys(baseForm)[13]]" placeholder="默认"
                      class="paperview-input-text" disabled></el-input>
                  </el-form-item>
                </el-col>
              </template>
              <template v-else-if="index === 5">
                <el-col :span="6" class="form-cell">
                  <el-form-item :label="item[0]">
                    <el-input v-model="baseForm[Object.keys(baseForm)[16]]" placeholder="默认"
                      class="paperview-input-text" :readonly="true"></el-input>
                  </el-form-item>
                </el-col>
                <el-col :span="6" class="form-cell">
                  <el-form-item :label="item[1]">
                    <el-input v-model="baseForm[Object.keys(baseForm)[17]]" placeholder="默认"
                      class="paperview-input-text" :readonly="true"></el-input>
                  </el-form-item>
                </el-col>
                <el-col :span="6" class="form-cell">
                  <el-form-item :label="item[2]">
                    <el-input v-model="baseForm[Object.keys(baseForm)[18]]" placeholder="默认"
                      class="paperview-input-text" :readonly="true"></el-input>
                  </el-form-item>
                </el-col>
                <el-col :span="6" class="form-cell">
                  <el-form-item :label="item[3]">
                    <el-input v-model="baseForm[Object.keys(baseForm)[19]]" placeholder="默认"
                      class="paperview-input-text" :readonly="true"></el-input>
                  </el-form-item>
                </el-col>
              </template>
              <template v-else>
                <el-col :span="6" class="form-cell">
                  <el-form-item :label="item[0]">
                    <el-input v-model="baseForm[Object.keys(baseForm)[(index - 1) * 4 + 2]]" placeholder="默认"
                      class="paperview-input-text" :readonly="true"></el-input>
                  </el-form-item>
                </el-col>
                <el-col :span="6" class="form-cell">
                  <el-form-item :label="item[1]">
                    <el-input v-model="baseForm[Object.keys(baseForm)[(index - 1) * 4 + 3]]" placeholder="默认"
                      class="paperview-input-text" :readonly="true"></el-input>
                  </el-form-item>
                </el-col>
                <el-col :span="6" class="form-cell">
                  <el-form-item :label="item[2]">
                    <el-input v-model="baseForm[Object.keys(baseForm)[(index - 1) * 4 + 4]]" placeholder="默认"
                      class="paperview-input-text" :readonly="true"></el-input>
                  </el-form-item>
                </el-col>
                <el-col :span="6" class="form-cell">
                  <el-form-item :label="item[3]" v-if="item[3] === '其他支出说明'">
                    <el-input v-model="baseForm[Object.keys(baseForm)[(index - 1) * 4 + 5]]" placeholder="请输入"
                      class="paperview-input-text"></el-input>
                  </el-form-item>
                  <el-form-item :label="item[3]" v-else>
                    <el-input v-model="baseForm[Object.keys(baseForm)[(index - 1) * 4 + 5]]" placeholder="默认"
                      class="paperview-input-text" :readonly="true"></el-input>
                  </el-form-item>
                </el-col>
              </template>
            </template>
          </div>
        </el-form>
      </div>

      <!-- 收支说明 -->
      <div style="margin-top: 50px;">
        <el-button type="primary"><i class="el-icon-download el-icon--right"></i>导出</el-button>
        <el-table :data="tableData" style="width: 100%;">
          <el-table-column :prop="key" :label="value" width="180" v-for="(value, key, index) in tableTitles"
            :key="index">
          </el-table-column>
        </el-table>
        <div>
          <div style="display: flex;">
            <div style="width: 200px;">回款金额（含税）:</div>
            <el-input v-model="money.refund" placeholder="请输入回款金额"></el-input>
          </div>
          <div style="display: flex;">
            <div style="width: 200px;">付款金额（含税）:</div>
            <el-input v-model="money.payment" placeholder="请输入付款金额"></el-input>
          </div>
        </div>
      </div>
    </el-card>
  </div>
</template>

<style lang="scss" scoped>
::v-deep .paperview-input-text .el-input__inner {
  -webkit-appearance: none;
  background-image: none;
  border-radius: 4px;
  border: 0px; //改成0，边框就消失了！
  width: 100%;
  text-align: center;
}

.layout {
  .app-container {
    padding: 20px;
  }

  .tableName {
    font-size: 24px;
    margin: 0 auto;
    text-align: center;
    color: rgb(148, 148, 148);
  }

  .form-tables {
    width: 100%;

    .form-row {
      display: inline-block;
      width: 100%;

      .form-cell {
        display: table-cell;
        border: 1px solid #ddd;

        ::v-deep .el-form-item--medium {
          width: 100%;
          margin-bottom: 0;

          .el-form-item__label {
            width: 40%;
            text-align: center;
            background-color: #f5f7fa;
          }

          .el-form-item__content {
            width: 60%;

          }
        }
      }
    }
  }
}
</style>

<script>
import StepNavigation from "@/components/NewProject/StepNavigation";
import { getSpecification, saveTableData, getProductCode, list, delProduct } from "@/api/create/investProject";

export default {
  name: "Integrate",
  components: {
    StepNavigation
  },
  data() {
    return {
      //添加的导航组件
      //添加的导航组件
      currentStep: 7,
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
      // 表格数据
      tableData: [

      ],
      tableData1: [

      ],
      entity_name_list: [

      ],

      entityTableTitle: [

      ],
      tableTitle: [

      ],
      baseForm: {
        info1: '市公司A',
        info2: '李四',
        info3: '2024年1月-2026年12月',
        info4: '3',
        info5: '2024年5月-2031年4月',
        info6: '7',
        info7: '4270.99',
        info8: '803.80',
        info9: '3467.19',
        info10: null,
        info11: '8386.27',
        info12: '8386.27',
        info13: '-',
        info14: '-',
        info15: '4115.28',
        info16: '3086.46',
        info17: '0.37',
        info18: '3.84',
        info19: '1.00',
        info20: '2.70'
      },
      baseFormIndex: 0,
      formTitle: [['项目责任单位', '责任人及联系方式'], ['项目建设周期', '项目建设期长', '评估时间', '评估期长'],
      ['总投入', '其中:本次立项支出', '其他支出', '其他支出说明'], ['总产出', '其中:直接收入', '间接收入', '间接收入说明'],
      ['总利润', '净利润'], ['年度平均利润', '投资回报率', '投资回收期（年）', '累计净现值']],
      tableTitles: {
        income: '项目直接收支',
        all: '合计',
        year0: '2024年',
        year1: '2025年',
        year2: '2026年',
      },
      tableData: [{
        income: '投入合计',
        all: '4270.33',
        year0: '196.20',
        year1: '554.2',
        year2: '741.73',
      }, {
        income: '产出合计',
        all: '8386.27',
        year0: '214.19',
        year1: '980.29',
        year2: '1171.14',
      }, {
        income: '总利润',
        all: '4115.28',
        year0: '17.99',
        year1: '426.02',
        year2: '429.41',
      }
      ],
      money: {
        refund: null,
        payment: null,
      }
    };
  },

  computed: {
    totalSteps() {
      return this.stepConfig.length;
    },
    currentStepConfig() {
      return this.stepConfig.find(config => config.step === this.currentStep);
    },
  },


  created() {
    this.projectId = this.$route.query.projectId
    let pageIndex = this.currentStep-1
    console.log(pageIndex)
    this.getList(this.projectId, pageIndex); // 调用 getList 方法
  },
  methods: {


    async navigateStep(direction) {
      const newStep = this.currentStep + direction;
      if (newStep >= 1 && newStep <= this.totalSteps) {
        this.currentStep = newStep;
        const newPath = this.stepConfig.find(config => config.step === this.currentStep).path;
        this.$router.push({ path: newPath, query: { projectId: this.projectId },}).catch(() => {});
      }
    },
    async next() {
      this.navigateStep(1);
    },
    async previous() {
      this.navigateStep(-1);
    },
    save() {
      saveInfo()
    },
    async getBase() {
      const res = await getBase();
      this.baseForm = res.data;
    },
    async getIncome() {
      const res = await getIncome();
      this.tableData = res.data;
    },
    async saveInfo() {
      let info10 = this.baseForm.info10;
      const res = await saveInfoElse({info10, ...this.money});
      if (res.code === 200) {
        this.$message.success('保存成功');
      }
    },
    getList(projectId, pageIndex) {
      list({projectId, pageIndex}).then((response) => {
        // this.entity_name_list=response.data.entity_name_list
        console.log(response)
        let formData = response.data.tableData.formData;
        console.log(formData)
        this.baseForm = {
          info1: formData['项目责任单位'],
          info2: formData['项目责任人及联系方式'],
          info3: formData['项目建设期间'],
          info4: formData['项目建设期长（年）'],
          info5: formData['评估期间'],
          info6: formData['评估期长（年）'],
          info7: formData['总投入'],
          info8: formData['其中：本次立项支出'],
          info9: (parseFloat(formData['总投入']) - parseFloat(formData['其中：本次立项支出'])).toFixed(2),
          info10: null,
          info11: formData['总产出'],
          info12: formData['总产出'],
          info13: '-',
          info14: '-',
          info15: formData['间接收入说明'],
          info16: formData['总利润'],
          info17: formData['净利润'],
          info18: formData['年度平均利润率'],
          info19: formData['投资回报率'],
          info20: (parseFloat(formData['投资回报率']) * 100).toFixed(2)
        };
      })
    }
  },

}
</script>
