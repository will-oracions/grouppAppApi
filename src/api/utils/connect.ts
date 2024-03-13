// import logger from './logger';

const { Sequelize } = require('sequelize');
import mysql2  from "mysql2"


export const sequelize = new Sequelize('u877916646_groupApp', 'root', '', {
  host: 'localhost',
  dialect: 'mysql',
  dialectModule: mysql2,
  pool: {
    max: 100,
    min: 0,
    acquire: 1000000,
    idle: 100000,
    evict: 2000,
  },
  dialectOptions: {
    decimalNumbers: true,
  },
  retry: {
    match: [
        /etimedout/,
        /ehostunreach/,
        /econnreset/,
        /econnrefused/,
        /etimedout/,
        /esockettimedout/,
        /ehostunreach/,
        /epipe/,
        /eai_again/,
        /sequelizeconnectionerror/,
        /sequelizeconnectionrefusederror/,
        /sequelizehostnotfounderror/,
        /sequelizehostnotreachableerror/,
        /sequelizeinvalidconnectionerror/,
        /sequelizeconnectiontimedouterror/
    ],
    max: 5
  }
});

const connect =async ()=>{
 
      try {
       await sequelize.authenticate();
      } catch (error) {
        console.log('Unable to connect to the database:', error);
      }
}
module.exports = {sequelize, connect};