import { Model, DataTypes } from "sequelize";
import { sequelize } from "../utils/sequelize";

interface OngAttributes {
  id: number;
  raisonSociale: string;
}

class OngModel extends Model<OngAttributes> implements OngAttributes {
  public id!: number;
  public raisonSociale!: string;
}

OngModel.init(
  {
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      allowNull: false,
    },
    raisonSociale: {
      type: DataTypes.TEXT,
      allowNull: false,
    },
  },
  {
    sequelize,
    modelName: "ong",
    freezeTableName: true,
    timestamps: true,
  }
);

// Ensure the table is created and ready to use
(async () => {
  await sequelize.sync({ force: false });
  // Additional code for initialization, if needed
})();

export default OngModel;
