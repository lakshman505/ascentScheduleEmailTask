let pool = require("../database/connections").getMysqlPool();
module.exports = {
    getUserByEmail: async function (email) {
        return new Promise(async (resolve) => {           
            pool.query("select user_id, name, email, password, role, is_admin from users where email = ? and status = ?", [email,1])
                .then(async result => {                   
                    if (result.length !== 0) {
                        resolve(result[0]);
                    } else {
                        resolve(null)
                    }
                })
                .catch(err => {
                    resolve(null);
                });
        })
    },
    updateUserData: async function (data, user_id) {        
        return new Promise(async (resolve, reject) => {           
            pool.query("UPDATE users SET ? where user_id = ?", [data, user_id])
                .then(result => {                  
                    resolve({ success: true, message: "User updated successfully" });
                })
                .catch(err => {
                    reject({ success: false, message: "something went wrong try again" });
                });
        })
    },
    updateOTPForAdminUser: async function (email, otp) {
        return new Promise(async (resolve) => {
            pool.query(`UPDATE users SET otp =? WHERE email = ?`, [otp, email])
                .then(async result => {
                    resolve({ success: true, message: "OTP changed successfully" });
                })
                .catch(err => {
                    resolve([])
                })
        })
    },
    resetPasswordForAdminUser: async (userId, password) => new Promise(async (resolve) => {
        pool.query("UPDATE users SET password =? WHERE user_id = ?", [password, userId])
            .then(async (result) => {
                resolve({ success: true, message: "Password changed succesfully" });
            })
            .catch(err => {
                resolve("");
            });
    }),   

}