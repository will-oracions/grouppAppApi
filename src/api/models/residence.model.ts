import PersonnesModel from "./personnes.model";
import QuartiersModel from "./quartiers.model";
import { Sequelize, Model, DataTypes } from "sequelize";
import { sequelize } from "../utils/database/sequelize";

interface ResidenceAttributes {
  id: number;
  description: string;
  // Add other attributes if needed
}

class ResidenceModel
  extends Model<ResidenceAttributes>
  implements ResidenceAttributes
{
  public id!: number;
  public description!: string;
  // Add other attributes if needed
}

ResidenceModel.init(
  {
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      allowNull: false,
    },
    description: {
      type: DataTypes.TEXT,
      allowNull: false,
    },
  },
  {
    sequelize,
    modelName: "residence",
    freezeTableName: true,
    timestamps: true,
  }
);

// Define associations
QuartiersModel.hasMany(ResidenceModel, {
  foreignKey: {
    name: "idquartier",
    allowNull: false,
  },
});
ResidenceModel.belongsTo(QuartiersModel, {
  foreignKey: {
    name: "idquartier",
    allowNull: false,
  },
});

// Ensure the table is created and ready to use
// (async () => {
//   await sequelize.sync({ force: false });
//   // Additional code for initialization, if needed
// })();

export default ResidenceModel;
