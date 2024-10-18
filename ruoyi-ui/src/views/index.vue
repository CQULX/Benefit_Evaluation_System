<template>
  <div class="app-container home">
    <el-row :gutter="20">
      <el-col :sm="24" :lg="24">
        <div class="welcome-section">
          <h1>欢迎使用效益评估管理平台</h1>
          <p>
            本平台旨在提供全面的项目预算管理和效益评估解决方案，
            助力各部门提升工作效率，实现智能化决策。
          </p>
          <el-button type="primary" size="medium" @click="startUsing">开始使用</el-button>
        </div>
      </el-col>
    </el-row>
    <el-row :gutter="20" class="info-section">
      <el-col :sm="24" :lg="12">
        <el-card class="box-card">
          <div slot="header" class="clearfix">
            <span>系统介绍</span>
          </div>
          <p>
            效益评估管理平台是为了满足全省范围内的项目预算管理和效益评估需求而开发的，多个部门能够在该系统内高效地完成评估工作，实现预算管理和效益分析的自动化和智能化，从而大幅提升工作效率和数据准确性。同时，该平台能够对项目全生命周期进行有效管理，确保从立项到结束的各个环节都有据可依，有助于提高决策的科学性和项目执行的透明度。
          </p>
          <p class="version-info">
            <el-tag type="success">当前版本: v{{ version }}</el-tag>
          </p>
        </el-card>
      </el-col>

      <el-col :sm="24" :lg="12">
        <el-card class="box-card">
          <div slot="header" class="clearfix">
            <span>技术选型</span>
          </div>
          <el-row :gutter="20">
            <el-col :span="12">
              <h4>后端技术</h4>
              <ul>
                <li><el-tag size="small">SpringBoot</el-tag></li>
                <li><el-tag size="small">Spring Security</el-tag></li>
                <li><el-tag size="small">JWT</el-tag></li>
                <li><el-tag size="small">MyBatis</el-tag></li>
                <li><el-tag size="small">Druid</el-tag></li>
                <li><el-tag size="small">Fastjson</el-tag></li>
              </ul>
            </el-col>
            <el-col :span="12">
              <h4>前端技术</h4>
              <ul>
                <li><el-tag size="small" type="success">Vue</el-tag></li>
                <li><el-tag size="small" type="success">Vuex</el-tag></li>
                <li><el-tag size="small" type="success">Element-ui</el-tag></li>
                <li><el-tag size="small" type="success">Axios</el-tag></li>
                <li><el-tag size="small" type="success">Sass</el-tag></li>
                <li><el-tag size="small" type="success">Quill</el-tag></li>
              </ul>
            </el-col>
          </el-row>
        </el-card>
      </el-col>
    </el-row>
  </div>
</template>

<script>
export default {
  name: "Index",
  data() {
    return {
      version: "1.0"
    };
  },
  methods: {
    startUsing() {
      this.$message.success('欢迎使用效益评估管理平台！');
    }
  }
};
</script>

<style scoped lang="scss">
.home {
  font-family: "Helvetica Neue", Helvetica, "PingFang SC", "Hiragino Sans GB", "Microsoft YaHei", "微软雅黑", Arial, sans-serif;
  color: #333;
  background-color: #f0f2f5;
  min-height: 100vh;
  padding: 20px;

  .welcome-section {
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    border-radius: 8px;
    padding: 40px;
    margin-bottom: 30px;
    text-align: center;
    color: white;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);

    h1 {
      font-size: 32px;
      margin-bottom: 20px;
      font-weight: 600;
    }

    p {
      font-size: 18px;
      line-height: 1.6;
      margin-bottom: 30px;
    }

    .el-button {
      font-size: 16px;
      padding: 12px 24px;
    }
  }

  .info-section {
    margin-top: 30px;

    .el-card {
      height: 100%;
      box-shadow: 0 2px 12px 0 rgba(0,0,0,.1);

      .el-card__header {
        background-color: #f6f8fa;
        font-weight: bold;
      }
    }

    h4 {
      font-size: 18px;
      color: #303133;
      margin-bottom: 15px;
    }

    ul {
      padding: 0;
      list-style-type: none;

      li {
        margin-bottom: 10px;
      }
    }

    .version-info {
      margin-top: 20px;
      text-align: right;
    }
  }

  .el-tag {
    margin-right: 5px;
  }
}
</style>
