const DbBase = require('./DbBase');
class UserModul extends DbBase {
    constructor() {
            super();
        }
        //注册

    userIshav(tel, callback) {
        let sql = "select * from user where tel = ?";
        this.mydb.query(sql, [tel], (err, result) => {
            if (err) {
                callback(err)
            } else {
                callback(result)
            }
        })
    }
    userReg(tel, passwd, date, callback) {
        let newsql = `insert into user (tel,passwd,regtime) VALUES(?,?,?)`
        this.mydb.query(newsql, [tel, passwd, date], (err, result) => {

            if (err) {
                callback(err)
            } else {
                callback(result)
            }
        })

    }
    userLogin(tel, callback) {
            let sql = "select * from user where tel=?";
            this.mydb.query(sql, [tel], (err, result) => {
                callback(result);
            })
        }
        //登录成功后，修改登录状态，和登录时间
    userUS(date, callback) {
        let sql = `update user set status=1 ,logintime=${date}`;
        this.mydb.query(sql, (err, result) => {
            callback(result);
        })
    }
}
module.exports = UserModul