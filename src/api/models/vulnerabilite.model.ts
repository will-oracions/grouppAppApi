import { Model, DataTypes } from "sequelize";
import { sequelize } from "../utils/database/sequelize";

interface VulnerabiliteAttributes {
  id: number;
  nom: string;
  description: string;
  // Add other attributes if needed
}

class VulnerabiliteModel
  extends Model<VulnerabiliteAttributes>
  implements VulnerabiliteAttributes
{
  public id!: number;
  public nom!: string;
  public description!: string;
  // Add other attributes if needed
}

VulnerabiliteModel.init(
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
    description: {
      type: DataTypes.STRING,
      allowNull: false,
    },
  },
  {
    sequelize,
    modelName: "vulnerabilite",
    freezeTableName: true,
    timestamps: true,
  }
);

// Ensure the table is created and ready to use
// (async () => {
//   await sequelize.sync({ force: false });
//   // Additional code for initialization, if needed
// })();

export default VulnerabiliteModel;
