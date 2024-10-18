<template>
  <div class="step-navigation">
    <div class="steps-container" ref="stepsContainer">
      <div class="steps" role="tablist" ref="stepsWrapper">
        <div
          v-for="(step, index) in steps"
          :key="index"
          :class="['step', { active: currentStep === index + 1 }]"
          role="tab"
          :aria-selected="currentStep === index + 1"
          :aria-label="`Step ${index + 1}: ${step}`"
          ref="stepElements"
        >
          {{ step }}
        </div>
      </div>
    </div>
    <div class="button-group">
      <el-button type="primary" @click="handlePrevious" :disabled="isFirstStep">上一步</el-button>
      <el-button type="primary" @click="$emit('save')">提交</el-button>
      <el-button type="primary" @click="handleNext" :disabled="isLastStep">下一步</el-button>
    </div>
  </div>
</template>

<script>
export default {
  name: 'StepNavigation',
  props: {
    steps: {
      type: Array,
      required: true
    },
    currentStep: {
      type: Number,
      required: true
    }
  },
  emits: ['previous', 'save', 'next'],
  computed: {
    isFirstStep() {
      return this.currentStep === 1;
    },
    isLastStep() {
      return this.currentStep === this.steps.length;
    }
  },
  methods: {
    handlePrevious() {
      this.$emit('previous');
      this.$nextTick(() => this.scrollToCurrentStep());
    },
    handleNext() {
      this.$emit('next');
      this.$nextTick(() => this.scrollToCurrentStep());
    },
    scrollToCurrentStep() {
      const container = this.$refs.stepsContainer;
      const stepElements = this.$refs.stepElements;
      if (container && stepElements && stepElements.length >= this.currentStep) {
        const currentStepElement = stepElements[this.currentStep - 1];
        const scrollLeft = currentStepElement.offsetLeft - (container.clientWidth / 2) + (currentStepElement.offsetWidth / 2);
        container.scrollTo({ left: scrollLeft, behavior: 'smooth' });
      }
    }
  },
  mounted() {
    this.scrollToCurrentStep();
  },
  watch: {
    currentStep() {
      this.$nextTick(() => this.scrollToCurrentStep());
    }
  }
}
</script>

<style scoped>
.step-navigation {
  display: flex;
  flex-direction: column;
  align-items: stretch;
  margin-bottom: 20px;
  padding-bottom: 10px;
  border-bottom: 1px solid #ebeef5;
}

.steps-container {
  overflow-x: auto;
  scrollbar-width: none; /* Firefox */
  -ms-overflow-style: none; /* Internet Explorer 10+ */
  margin-bottom: 15px;
}

.steps-container::-webkit-scrollbar {
  display: none; /* WebKit */
}

.steps {
  display: flex;
  align-items: stretch;
  background-color: #f5f7fa;
  border-radius: 4px;
  overflow: visible;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
  width: 100%;
  min-width: max-content;
}

.step {
  position: relative;
  padding: 12px 20px;
  color: #909399;
  flex: 1;
  text-align: center;
  display: flex;
  align-items: center;
  justify-content: center;
  transition: all 0.3s ease;
  font-size: 14px;
  cursor: pointer;
  min-width: 100px;
}

.step::after {
  content: '';
  position: absolute;
  top: 50%;
  right: -10px;
  transform: translateY(-50%) rotate(45deg);
  width: 20px;
  height: 20px;
  background-color: #f5f7fa;
  border-top: 1px solid #e4e7ed;
  border-right: 1px solid #e4e7ed;
  z-index: 1;
  transition: background-color 0.3s ease;
}

.step:last-child::after {
  display: none;
}

.step.active {
  color: #fff;
  font-weight: bold;
  background-color: #409EFF;
}

.step.active::after {
  background-color: #409EFF;
}

.button-group {
  display: flex;
  justify-content: space-between;
  gap: 10px;
}

@media (min-width: 768px) {
  .step-navigation {
    flex-direction: row;
    justify-content: space-between;
    align-items: center;
  }

  .steps-container {
    flex: 1;
    margin-bottom: 0;
    margin-right: 20px;
  }

  .button-group {
    flex-shrink: 0;
  }
}

@media (max-width: 767px) {
  .step {
    padding: 10px 15px;
    min-width: 80px;
  }

  .step::after {
    right: -8px;
    width: 16px;
    height: 16px;
  }
}
</style>
