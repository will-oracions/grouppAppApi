import { sequelize } from "../utils/database/sequelize";

const { Model, DataTypes } = require("sequelize");

const AgentsModel = sequelize.define(
  "agents",
  {
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      allowNull: false,
    },
    nom: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    prenoms: {
      type: DataTypes.STRING,
      allowNull: false,
    },
  },
  {
    tableName: "agents",
    freezeTableName: true,
    timestamps: true,
  }
);

// (async () => {
//   await sequelize.sync({ force: false });
//   // Code here
// })();

module.exports = AgentsModel;
export default AgentsModel;
