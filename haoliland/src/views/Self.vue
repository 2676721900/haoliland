<template>
  <div class="self">
    <h1>我自己员工信息列表</h1>
    <ul>
       <li v-for="e in employee" :key="e.id">{{e.name}}</li>
    </ul>
  </div>
</template>
<script >
     export default{
         data:function(){
              return{
                employee:[]
              }
         },
         created(){
           this.axios.get("/getEmployee").then(res=>{
             this.employee = res.data
           })
         }
     }
</script>
<style>

</style>