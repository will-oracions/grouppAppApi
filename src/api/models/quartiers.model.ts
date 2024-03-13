import { Model, DataTypes } from "sequelize";
import { sequelize } from "../utils/sequelize";

interface QuartiersAttributes {
  id: number;
  libelle: string;
  idCommunes: number;
}

class QuartiersModel
  extends Model<QuartiersAttributes>
  implements QuartiersAttributes
{
  public id!: number;
  public libelle!: string;
  public idCommunes!: number;
}

QuartiersModel.init(
  {
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      allowNull: false,
    },
    libelle: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    idCommunes: {
      type: DataTypes.STRING,
      allowNull: false,
    },
  },
  {
    sequelize,
    modelName: "quartiers",
    freezeTableName: true,
    timestamps: true,
  }
);

// Ensure the table is created and ready to use
(async () => {
  await sequelize.sync({ force: false });
  // Additional code for initialization, if needed
})();

export default QuartiersModel;
