<template>
  <div class="box">
    <top-head></top-head>
    <div class="form">
      <el-form
        :model="ruleForm"
        :rules="rules"
        ref="ruleForm"
        label-width="100px"
        class="demo-ruleForm"
      >
        <el-form-item label="用户名" prop="name">
          <el-input v-model="ruleForm.name" type="text"></el-input>
        </el-form-item>
        <el-form-item label="用户密码" prop="passW">
          <el-input v-model="ruleForm.passW" type="password"></el-input>
        </el-form-item>
        <el-form-item label="确认密码" prop="repassW">
          <el-input v-model="ruleForm.repassW" type="password"></el-input>
        </el-form-item>
        <el-form-item class="button">
          <el-button type="primary" @click="submitForm('ruleForm')">提交</el-button>
          <el-button @click="resetForm('ruleForm')">重置</el-button>
        </el-form-item>
      </el-form>
    </div>
  </div>
</template>
<script >
export default {
  data() {
    var validatePass = (rule, value, callback) => {
      if (value === "") {
        callback(new Error("请输入密码"));
      } else {
        if (
          /^(?=.*\d+)(?=.*_+)(?=.*\W+)(?=.*[a-zA-Z]+).{8,16}$/gim.test(value)
        ) {
          if (this.ruleForm.repassW !== "") {
            this.$refs.ruleForm.validateField("repassW");
          }
          callback();
        } else {
          callback(new Error("请输入必须包含数字，字母，_,特殊字符的密码"));
        }
      }
    };
    var validatePass2 = (rule, value, callback) => {
      if (value === "") {
        callback(new Error("请再次输入密码"));
      } else if (value !== this.ruleForm.passW) {
        callback(new Error("两次输入密码不一致!"));
      } else {
        callback();
      }
    };
    return {
      ruleForm: {
        name: "",
        passW: "",
        repassW: ""
      },
      rules: {
        name: [
          { required: true, message: "请输入用户名", trigger: "blur" },
          { min: 2, max: 10, message: "长度在 2到10 个字符", trigger: "blur" }
        ],
        passW: [
          { required: true, message: "请输入用户密码", trigger: "blur" },
          { min: 8, max: 16, message: "长度在 8到16 个字符", trigger: "blur" },
          { validator: validatePass, trigger: "blur" }
        ],
        repassW: [
          { required: true, message: "请输入再次输入密码", trigger: "blur" },
          { validator: validatePass2, trigger: "blur" }
        ]
      }
    };
  },
  methods: {
    submitForm(formName) {
      this.$refs[formName].validate(valid => {
        if (valid) {
          this.axios
            .post("/reg", this.ruleForm)
            .then(response => {
              console.log(response.data.msg);
              if (response.data.msg == "注册失败") {
                this.$alert("用户名已存在", "注册失败", {
                  confirmButtonText: "确定",
                  callback: action => {}
                });
              } else {
                this.$message({
                  message: "恭喜你，注册成功！",
                  type: "success"
                });
                this.$router.push({ path: "/" });
              }
            })
            .catch(err => {
              console.log(err);
            });
        } else {
          console.log("error submit!!");
          return false;
        }
      });
    },
    resetForm(formName) {
      this.$refs[formName].resetFields();
    }
  }
};
</script>
<style>
.form {
  width: 50%;
  margin: 60px auto;
}
.button{
  width: 30%;
  margin: 10px auto;
}
</style>