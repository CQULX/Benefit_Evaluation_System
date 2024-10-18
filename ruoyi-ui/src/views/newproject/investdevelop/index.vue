<template>
  <div class="app-container">
    <el-card class="box-card">
      <StepNavigation
        :steps="['基本信息', '投资明细', '收入明细','支出明细','折旧摊销','现金流','综合评估']"
        :current-step="currentStep"
        @previous="previous"
        @save="save"
        @next="next"
      />

      <el-row :gutter="20">
        <el-col :span="24">
          <div class="form-section">
            <div class="section-title"><i class="el-icon-document"></i> 单位及人员信息</div>
            <VueForm
              v-model="data1.formData"
              :ui-schema="data1.uiSchema"
              :schema="data1.schema"
              :form-footer="data1.formFooter"
              :form-props="data1.formProps"
            >
            </VueForm>
          </div>
        </el-col>
        <el-col :span="24">
          <div class="form-section">
            <div class="section-title"><i class="el-icon-document"></i> 项目基本信息</div>
            <VueForm
              v-model="data2.formData"
              :ui-schema="data2.uiSchema"
              :schema="data2.schema"
              :form-footer="data2.formFooter"
              :form-props="data2.formProps"
            >
            </VueForm>
          </div>
        </el-col>
      </el-row>
    </el-card>
  </div>
</template>

<script>
import VueForm from "@lljj/vue-json-schema-form";
import StepNavigation from "@/components/NewProject/StepNavigation";
import { getTable, saveInfo } from "@/api/create/investProject";

export default {
  name: "Invest",
  components: {
    VueForm,
    StepNavigation,
  },
  data() {
    return {
      //添加的导航组件
      currentStep: 1,
      stepConfig: [
        { step: 1, path: "/newproject/investdevelop" },
        { step: 2, path: "/newproject/cost" },
        { step: 3, path: "/newproject/income" },
        // 添加更多步骤
        { step: 4, path: "/newproject/expenditure" },
        { step: 5, path: "/newproject/expenditure" },
        { step: 6, path: "/newproject/flow" },
        { step: 7, path: "/newproject/integrate" },
      ],

      projectId: 6,
      data1: {
        formData: {},
        schema: {},
        uiSchema: {},
        formFooter: {
          show: false,
        },
        formProps: {
          layoutColumn: 2,
        },
      },
      data2: {
        formData: {},
        schema: {
          type: "object",

          properties: {
            projectCategoryId: {
              title: "项目大类",
              type: "string",
              enum: ["1", "2", "3", "4"],
              enumNames: ["人工智能", "大数据", "云计算", "物联网"],
              "ui:width": "15%",
            },
            // projectSubcategoryId:{
            //   title: "项目小类",
            //   type: "string",
            //   enum: [],
            //   enumNames: [],
            //   "ui:width": "35%",
            // },
            item0: {
              title: "项目小类",
              type: "string",
              enum: [],
              enumNames: [],
              "ui:hidden": "{{parentFormData.projectCategoryId}}",
              "ui:width": "35%",
            },
            item1: {
              title: "项目小类",
              type: "string",
              enum: ["1", "2"],
              enumNames: ["机器学习", "自然语言处理"],
              "ui:hidden": "{{parentFormData.projectCategoryId !== '1'}}",
              "ui:width": "35%",
            },
            item2: {
              title: "项目小类",
              type: "string",
              enum: ["3"],
              enumNames: ["数据挖掘"],
              "ui:hidden": "{{parentFormData.projectCategoryId !== '2'}}",
              "ui:width": "35%",
            },
            item3: {
              title: "项目小类",
              type: "string",
              enum: ["4"],
              enumNames: ["云存储"],
              "ui:hidden": "{{parentFormData.projectCategoryId !== '3'}}",
              "ui:width": "35%",
            },
            item4: {
              title: "项目小类",
              type: "string",
              enum: ["5"],
              enumNames: ["智能家居"],
              "ui:hidden": "{{parentFormData.projectCategoryId !== '4'}}",
              "ui:width": "35%",
            },
            projectNumber: {
              title: "项目编号",
              type: "string",
              "ui:width": "50%",
            },
            projectName: {
              title: "项目名称",
              type: "string",
              "ui:width": "50%",
            },
            singleBatchAssetEvaluationDurationYears: {
              title: "单批资产评估周期(年)",
              type: "string",
              "ui:width": "50%",
            },
            constructionStartDate: {
              title: "项目建设时间(开始)",
              type: "string",
              format: "date",
              "ui:width": "15%",
            },
            constructionEndDate: {
              title: "(结束)",
              type: "string",
              format: "date",
              "ui:width": "35%",
            },
            constructionDurationYears: {
              title: "项目建设周期(年)",
              type: "string",
              "ui:width": "50%",
              "ui:options": {
                disabled: true,
              },
            },
            evaluationStartDate: {
              title: "项目评估时间(开始)",
              type: "string",
              format: "date",
              "ui:width": "15%",
            },
            evaluationEndDate: {
              title: "(结束)",
              type: "string",
              format: "date",
              "ui:width": "35%",
            },
            projectEvaluationDurationYears: {
              title: "项目评估周期(年)",
              type: "string",
              "ui:width": "50%",
              "ui:options": {
                disabled: true,
              },
            },
          },
        },
        uiSchema: {
          item1: {
            "ui:options": {
              onChange({ curVal, preVal, parentFormData, rootFormData }) {
                parentFormData.projectSubcategoryId = curVal;
              },
            },
          },
          item2: {
            "ui:options": {
              onChange({ curVal, preVal, parentFormData, rootFormData }) {
                parentFormData.projectSubcategoryId = curVal;
              },
            },
          },
          item3: {
            "ui:options": {
              onChange({ curVal, preVal, parentFormData, rootFormData }) {
                parentFormData.projectSubcategoryId = curVal;
              },
            },
          },
          item4: {
            "ui:options": {
              onChange({ curVal, preVal, parentFormData, rootFormData }) {
                parentFormData.projectSubcategoryId = curVal;
                console.log(parentFormData);
              },
            },
          },
          projectCategoryId: {
            "ui:options": {},
          },
          constructionStartDate: {
            "ui:options": {
              onChange({ curVal, preVal, parentFormData, rootFormData }) {
                if (parentFormData.constructionEndDate) {
                  var beginYear = curVal.slice(0, 4);
                  var endYear = parentFormData.constructionEndDate.slice(0, 4);
                  this.$delete(parentFormData, "constructionDurationYears");
                  parentFormData.constructionDurationYears = String(
                    endYear - beginYear
                  );
                }
              },
            },
          },
          constructionEndDate: {
            "ui:options": {
              onChange({ curVal, preVal, parentFormData, rootFormData }) {
                if (parentFormData.constructionStartDate) {
                  var beginYear = parentFormData.constructionStartDate.slice(
                    0,
                    4
                  );
                  var endYear = curVal.slice(0, 4);
                  this.$delete(parentFormData, "constructionDurationYears");
                  parentFormData.constructionDurationYears = String(
                    endYear - beginYear
                  );
                }
              },
            },
          },
          evaluationStartDate: {
            "ui:options": {
              onChange({ curVal, preVal, parentFormData, rootFormData }) {
                if (parentFormData.evaluationEndDate) {
                  var beginYear = curVal.slice(0, 4);
                  var endYear = parentFormData.evaluationEndDate.slice(0, 4);
                  this.$delete(
                    parentFormData,
                    "projectEvaluationDurationYears"
                  );
                  parentFormData.projectEvaluationDurationYears = String(
                    endYear - beginYear
                  );
                }
              },
            },
          },
          evaluationEndDate: {
            "ui:options": {
              onChange({ curVal, preVal, parentFormData, rootFormData }) {
                if (parentFormData.evaluationStartDate) {
                  var beginYear = parentFormData.evaluationStartDate.slice(
                    0,
                    4
                  );
                  var endYear = curVal.slice(0, 4);
                  this.$delete(
                    parentFormData,
                    "projectEvaluationDurationYears"
                  );
                  parentFormData.projectEvaluationDurationYears = String(
                    endYear - beginYear
                  );
                }
                console.log(parentFormData);
              },
            },
          },
        },
        formFooter: {
          show: false,
        },
        formProps: {
          layoutColumn: 3,
          labelSuffix: ":",
        },
      },
    };
  },

  computed: {
    totalSteps() {
      return this.stepConfig.length;
    },
    currentStepConfig() {
      return this.stepConfig.find((config) => config.step === this.currentStep);
    },
  },

  created() {
    this.getTableForm(this.$route.query.projectId);
    console.log(this.projectId);
  },

  methods: {
    getTableForm(query) {
      // this.loading = true;
      let projectId = query;
      console.log("路由参数：" + query);
      getTable({ projectId }).then((response) => {
        console.log(response);
        this.data1.schema = response.data.schema;
        this.data1.formData = response.data.formData;
        this.data1.uiSchema = response.data.formProps;
        if (response.hasOwnProperty("projectInfo")) {
          console.log(response.projectInfo);
          response.projectInfo.projectCategoryId =
            response.projectInfo.projectCategoryId.toString();
          response.projectInfo.projectSubcategoryId =
            response.projectInfo.projectSubcategoryId.toString();
          response.projectInfo.constructionDurationYears =
            response.projectInfo.constructionDurationYears.toString();
          response.projectInfo.projectEvaluationDurationYears =
            response.projectInfo.projectEvaluationDurationYears.toString();
          response.projectInfo.singleBatchAssetEvaluationDurationYears =
            response.projectInfo.singleBatchAssetEvaluationDurationYears.toString();
          this.data2.formData = response.projectInfo;
          let subCategoryList=["item1", "item2", "item3", "item4"]
          for (var obj in subCategoryList) {
            console.log(obj)
            this.data2.formData[subCategoryList[obj]] = response.projectInfo.projectSubcategoryId;
          }
        }

        //  this.data2.schema = response.data.schema;
        // this.data2.formData = response.data.formData;
        // this.data2.uiSchema = response.data.formProps;
        // this.loading = false;
      });
    },

    // save() {
    //   saveInfo(this.data2.formData);
    //   console.log(this.data2.formData)
    // },

    async save() {
      try {
        await saveInfo(this.data2.formData).then((response) => {
          this.projectId = response.data.id;
          console.log(response);
          console.log(this.projectId);
          // localStorage.setItem("projectId", response.data.id);
        });
        this.$message.success("保存成功");
      } catch (error) {
        console.error("保存数据时出错:", error);
      }
    },

    // next() {
    //   this.$router
    //     .push({
    //       path: "/newproject/cost",
    //       query: { projectId: this.projectId },
    //     })
    //     .catch(() => {});
    // },

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

    async next() {
      await this.navigateStep(1);
    },

    async previous() {
      await this.navigateStep(-1);
    },
  },
};
</script>

<style scoped>
.app-container {
  padding: 20px;
}

.box-card {
  margin-bottom: 20px;
}

.form-section {
  margin-bottom: 20px;
  background-color: #f5f7fa;
  padding: 20px;
  border-radius: 4px;
}

.section-title {
  font-size: 16px;
  font-weight: bold;
  margin-bottom: 15px;
  color: #303133;
}
</style>

<style scoped>
.app-container {
  padding: 20px;
}

.box-card {
  margin-bottom: 20px;
}

.form-section {
  margin-bottom: 20px;
  background-color: #f5f7fa;
  padding: 20px;
  border-radius: 4px;
}

.section-title {
  font-size: 16px;
  font-weight: bold;
  margin-bottom: 15px;
  color: #303133;
}
</style>
