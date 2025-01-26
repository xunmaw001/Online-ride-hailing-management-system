<template>
<div :style='{"border":"2px solid #dbd9f4","padding":"20px","margin":"10px auto","borderRadius":"8px","background":"#fff","width":"1200px","position":"relative"}'>
    <el-form
      class="add-update-preview"
      ref="ruleForm"
      :model="ruleForm"
      :rules="rules"
      label-width="80px"
    >
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"0"}' label="月份" prop="yuefen">
            <el-input v-model="ruleForm.yuefen" 
                placeholder="月份" clearable ></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"0"}' label="司机账号" prop="sijizhanghao">
            <el-select  @change="sijizhanghaoChange" v-model="ruleForm.sijizhanghao" placeholder="请选择司机账号">
              <el-option
                  v-for="(item,index) in sijizhanghaoOptions"
                  :key="index"
                  :label="item"
                  :value="item">
              </el-option>
            </el-select>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"0"}' label="司机姓名" prop="sijixingming">
            <el-input v-model="ruleForm.sijixingming" 
                placeholder="司机姓名" clearable ></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"0"}' label="基本工资" prop="jibengongzi">
            <el-input v-model="ruleForm.jibengongzi" 
                placeholder="基本工资" clearable ></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"0"}' label="奖金提成" prop="jiangjinticheng">
            <el-input v-model="ruleForm.jiangjinticheng" 
                placeholder="奖金提成" clearable ></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"0"}' label="补贴费用" prop="butiefeiyong">
            <el-input v-model="ruleForm.butiefeiyong" 
                placeholder="补贴费用" clearable ></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"0"}' label="实发工资" prop="shifagongzi">
              <el-input v-model="shifagongzi" placeholder="实发工资" readonly></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"0"}' label="备注" prop="beizhu">
            <editor 
                :style='{"border":"1px solid #cbbae8","width":"100%","borderRadius":"4px","height":"auto"}'
                v-model="ruleForm.beizhu" 
                class="editor" 
                action="file/upload">
            </editor>
          </el-form-item>

      <el-form-item :style='{"padding":"0","margin":"0"}'>
        <el-button :style='{"border":"0","cursor":"pointer","padding":"0","margin":"0 25%","outline":"none","color":"#666","borderRadius":"10px","background":"linear-gradient(90deg, rgba(255,233,100,1) 0%, rgba(194,248,126,1) 29%, rgba(181,233,252,1) 61%, rgba(246,172,218,1) 100%)","width":"128px","lineHeight":"40px","fontSize":"14px","height":"40px"}'  type="primary" @click="onSubmit">提交</el-button>
        <el-button :style='{"border":"2px solid rgba(213, 203, 235, 1)","cursor":"pointer","padding":"0","margin":"0","outline":"none","color":"#000","borderRadius":"4px","background":"rgba(255, 255, 255, 1)","width":"128px","lineHeight":"40px","fontSize":"14px","height":"40px"}' @click="back()">返回</el-button>
      </el-form-item>
    </el-form>
</div>
</template>

<script>
  export default {
    data() {
      return {
        id: '',
        baseUrl: '',
        ro:{
            yuefen : false,
            sijizhanghao : false,
            sijixingming : false,
            jibengongzi : false,
            jiangjinticheng : false,
            butiefeiyong : false,
            shifagongzi : false,
            beizhu : false,
        },
        type: '',
        userTableName: localStorage.getItem('UserTableName'),
        ruleForm: {
          yuefen: '',
          sijizhanghao: '',
          sijixingming: '',
          jibengongzi: '',
          jiangjinticheng: '',
          butiefeiyong: '',
          shifagongzi: '',
          beizhu: '',
        },
        sijizhanghaoOptions: [],
        rules: {
          yuefen: [
          ],
          sijizhanghao: [
          ],
          sijixingming: [
          ],
          jibengongzi: [
            { validator: this.$validate.isIntNumer, trigger: 'blur' },
          ],
          jiangjinticheng: [
            { validator: this.$validate.isIntNumer, trigger: 'blur' },
          ],
          butiefeiyong: [
            { validator: this.$validate.isIntNumer, trigger: 'blur' },
          ],
          shifagongzi: [
            { validator: this.$validate.isIntNumer, trigger: 'blur' },
          ],
          beizhu: [
          ],
        },
      };
    },
    computed: {
        shifagongzi: {
            get: function () {
                return 0+parseFloat(this.ruleForm.jibengongzi==""?0:this.ruleForm.jibengongzi)+parseFloat(this.ruleForm.jiangjinticheng==""?0:this.ruleForm.jiangjinticheng)+parseFloat(this.ruleForm.butiefeiyong==""?0:this.ruleForm.butiefeiyong) || 0
            }
        },



    },
    created() {
	  //this.bg();
      let type = this.$route.query.type ? this.$route.query.type : '';
      this.init(type);
      this.baseUrl = this.$config.baseUrl;
    },
    methods: {
      getMakeZero(s) {
          return s < 10 ? '0' + s : s;
      },
      // 下载
      download(file){
        window.open(`${file}`)
      },
      // 初始化
      init(type) {
        this.type = type;
        if(type=='cross'){
          var obj = JSON.parse(localStorage.getItem('crossObj'));
          for (var o in obj){
            if(o=='yuefen'){
              this.ruleForm.yuefen = obj[o];
              this.ro.yuefen = true;
              continue;
            }
            if(o=='sijizhanghao'){
              this.ruleForm.sijizhanghao = obj[o];
              this.ro.sijizhanghao = true;
              continue;
            }
            if(o=='sijixingming'){
              this.ruleForm.sijixingming = obj[o];
              this.ro.sijixingming = true;
              continue;
            }
            if(o=='jibengongzi'){
              this.ruleForm.jibengongzi = obj[o];
              this.ro.jibengongzi = true;
              continue;
            }
            if(o=='jiangjinticheng'){
              this.ruleForm.jiangjinticheng = obj[o];
              this.ro.jiangjinticheng = true;
              continue;
            }
            if(o=='butiefeiyong'){
              this.ruleForm.butiefeiyong = obj[o];
              this.ro.butiefeiyong = true;
              continue;
            }
            if(o=='shifagongzi'){
              this.ruleForm.shifagongzi = obj[o];
              this.ro.shifagongzi = true;
              continue;
            }
            if(o=='beizhu'){
              this.ruleForm.beizhu = obj[o];
              this.ro.beizhu = true;
              continue;
            }
          }
        }
        // 获取用户信息
        this.$http.get(this.userTableName + '/session', {emulateJSON: true}).then(res => {
          if (res.data.code == 0) {
            var json = res.data.data;
          }
        });
        this.$http.get('option/siji/sijizhanghao', {emulateJSON: true}).then(res => {
          if (res.data.code == 0) {
            this.sijizhanghaoOptions = res.data.data;
          }
        });
      },
      // 下二随
      sijizhanghaoChange () {
        this.$http.get('follow/siji/sijizhanghao?columnValue=' + this.ruleForm.sijizhanghao, {emulateJSON: true}).then(res => {
          if (res.data.code == 0) {
            if(res.data.data.sijixingming){
              this.ruleForm.sijixingming = res.data.data.sijixingming
            }
          }
        });
      },

    // 多级联动参数
      // 多级联动参数
      info(id) {
        this.$http.get('gongzixinxi/detail/${id}', {emulateJSON: true}).then(res => {
          if (res.data.code == 0) {
            this.ruleForm = res.data.data;
          }
        });
      },
      // 提交
      onSubmit() {

          this.ruleForm.shifagongzi = this.shifagongzi
        //更新跨表属性
        var crossuserid;
        var crossrefid;
        var crossoptnum;
        this.$refs["ruleForm"].validate(valid => {
          if(valid) {
            if(this.type=='cross'){
                 var statusColumnName = localStorage.getItem('statusColumnName');
                 var statusColumnValue = localStorage.getItem('statusColumnValue');
                 if(statusColumnName && statusColumnName!='') {
                     var obj = JSON.parse(localStorage.getItem('crossObj'));
                     if(!statusColumnName.startsWith("[")) {
                         for (var o in obj){
                             if(o==statusColumnName){
                                 obj[o] = statusColumnValue;
                             }
                         }
                         var table = localStorage.getItem('crossTable');
                         this.$http.post(table+'/update', obj).then(res => {});
                     } else {
                            crossuserid=Number(localStorage.getItem('userid'));
                            crossrefid=obj['id'];
                            crossoptnum=localStorage.getItem('statusColumnName');
                            crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
                     }
                 }
            }
            if(crossrefid && crossuserid) {
                 this.ruleForm.crossuserid=crossuserid;
                 this.ruleForm.crossrefid=crossrefid;
                 var params = {
                     page: 1,
                     limit: 10,
                     crossuserid:crossuserid,
                     crossrefid:crossrefid,
                 }
                 this.$http.get('gongzixinxi/list', {
                  params: params
                 }).then(res => {
                     if(res.data.data.total>=crossoptnum) {
                         this.$message({
                          message: localStorage.getItem('tips'),
                          type: 'success',
                          duration: 1500,
                         });
                          return false;
                     } else {
                         // 跨表计算


                          this.$http.post('gongzixinxi/add', this.ruleForm).then(res => {
                              if (res.data.code == 0) {
                                  this.$message({
                                      message: '操作成功',
                                      type: 'success',
                                      duration: 1500,
                                      onClose: () => {
                                          this.$router.go(-1);
                                      }
                                  });
                              } else {
                                  this.$message({
                                      message: res.data.msg,
                                      type: 'error',
                                      duration: 1500
                                  });
                              }
                          });
                     }
                 });
             } else {


                  this.$http.post('gongzixinxi/add', this.ruleForm).then(res => {
                     if (res.data.code == 0) {
                          this.$message({
                              message: '操作成功',
                              type: 'success',
                              duration: 1500,
                              onClose: () => {
                                  this.$router.go(-1);
                              }
                          });
                      } else {
                          this.$message({
                              message: res.data.msg,
                              type: 'error',
                              duration: 1500
                          });
                      }
                  });
             }
          }
        });
      },
      // 获取uuid
      getUUID () {
        return new Date().getTime();
      },
      // 返回
      back() {
        this.$router.go(-1);
      },
    }
  };
</script>

<style rel="stylesheet/scss" lang="scss" scoped>
	.el-date-editor.el-input {
		width: auto;
	}
	
	.add-update-preview .el-form-item /deep/ .el-form-item__label {
	  padding: 0 10px 0 0;
	  color: #666;
	  font-weight: 500;
	  width: 80px;
	  font-size: 14px;
	  line-height: 40px;
	  text-align: right;
	}
	
	.add-update-preview .el-form-item /deep/ .el-form-item__content {
	  margin-left: 80px;
	}
	
	.add-update-preview .el-input /deep/ .el-input__inner {
	  border: 1px solid #cbbae8;
	  border-radius: 4px;
	  padding: 0 12px;
	  outline: none;
	  color: #999;
	  background: 0;
	  width: 400px;
	  font-size: 14px;
	  height: 40px;
	}
	
	.add-update-preview .el-select /deep/ .el-input__inner {
	  border: 1px solid #cbbae8;
	  border-radius: 4px;
	  padding: 0 10px;
	  outline: none;
	  color: #999;
	  background: 0;
	  width: 200px;
	  font-size: 14px;
	  height: 40px;
	}
	
	.add-update-preview .el-date-editor /deep/ .el-input__inner {
	  border: 1px solid #cbbae8;
	  border-radius: 4px;
	  padding: 0 10px 0 30px;
	  outline: none;
	  color: #999;
	  background: 0;
	  width: 200px;
	  font-size: 14px;
	  height: 40px;
	}
	
	.add-update-preview /deep/ .el-upload--picture-card {
		background: transparent;
		border: 0;
		border-radius: 0;
		width: auto;
		height: auto;
		line-height: initial;
		vertical-align: middle;
	}
	
	.add-update-preview /deep/ .upload .upload-img {
	  border: 1px dashed rgba(204, 188, 233, 1);
	  cursor: pointer;
	  border-radius: 6px;
	  color: #cbbae8;
	  width: 200px;
	  font-size: 32px;
	  line-height: 120px;
	  text-align: center;
	}
	
	.add-update-preview /deep/ .el-upload-list .el-upload-list__item {
	  border: 1px dashed rgba(204, 188, 233, 1);
	  cursor: pointer;
	  border-radius: 6px;
	  color: #cbbae8;
	  width: 200px;
	  font-size: 32px;
	  line-height: 120px;
	  text-align: center;
	}
	
	.add-update-preview /deep/ .el-upload .el-icon-plus {
	  border: 1px dashed rgba(204, 188, 233, 1);
	  cursor: pointer;
	  border-radius: 6px;
	  color: #cbbae8;
	  width: 200px;
	  font-size: 32px;
	  line-height: 120px;
	  text-align: center;
	}
	
	.add-update-preview .el-textarea /deep/ .el-textarea__inner {
	  border: 1px solid #cbbae8;
	  border-radius: 4px;
	  padding: 12px;
	  outline: none;
	  color: #999;
	  background: 0;
	  width: 400px;
	  font-size: 14px;
	  height: 120px;
	}
</style>
