const { Sequelize } = require("sequelize");
// import mysql2 from "mysql2";

import env from "../../../../config/env";

// export const sequelize = new Sequelize(
//   env.DATABASE_NAME, // "u877916646_groupApp",
//   env.DATABASE_USER, // "u877916646_username",
//   env.DATABASE_PASSWORD, // "grouppApp@12",
//   {
//     host: env.DATABASE_HOST, // "srv915.hstgr.io",
//     port: env.DATABASE_PORT, // "3306",
//     dialect: env.DATABASE_PROVIDER, // "mysql",
//     dialectModule: mysql2,
//     pool: {
//       max: 100,
//       min: 0,
//       acquire: 1000000,
//       idle: 100000,
//       evict: 2000,
//     },
//     dialectOptions: {
//       decimalNumbers: true,
//     },
//     retry: {
//       match: [
//         /etimedout/,
//         /ehostunreach/,
//         /econnreset/,
//         /econnrefused/,
//         /etimedout/,
//         /esockettimedout/,
//         /ehostunreach/,
//         /epipe/,
//         /eai_again/,
//         /sequelizeconnectionerror/,
//         /sequelizeconnectionrefusederror/,
//         /sequelizehostnotfounderror/,
//         /sequelizehostnotreachableerror/,
//         /sequelizeinvalidconnectionerror/,
//         /sequelizeconnectiontimedouterror/,
//       ],
//       max: 5,
//     },
//   }
// );

export const sequelize = new Sequelize(env.DATABASE_URL, {
  logging: false,
});
