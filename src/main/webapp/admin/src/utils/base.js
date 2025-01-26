const base = {
    get() {
        return {
            url : "http://localhost:8080/ssmzzg74/",
            name: "ssmzzg74",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssmzzg74/front/dist/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "网约车管理系统"
        } 
    }
}
export default base
