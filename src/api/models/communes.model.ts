import QuartiersModel from "./quartiers.model";
import { Model, DataTypes } from "sequelize";
import { sequelize } from "../utils/sequelize";

interface CommunesAttributes {
  id: number;
  code: string;
  libelle: string;
}

class CommunesModel
  extends Model<CommunesAttributes>
  implements CommunesAttributes
{
  public id!: number;
  public code!: string;
  public libelle!: string;
}

CommunesModel.init(
  {
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      allowNull: false,
    },
    code: {
      type: DataTypes.STRING,
      unique: true,
      allowNull: false,
      validate: {
        len: [1, 255],
      },
    },
    libelle: {
      type: DataTypes.STRING,
      allowNull: false,
    },
  },
  {
    sequelize,
    modelName: "communes",
    freezeTableName: true,
    timestamps: true,
  }
);
CommunesModel.hasMany(QuartiersModel, {
  foreignKey: {
    name: "idCommunes",
    allowNull: false,
  },
});
QuartiersModel.belongsTo(CommunesModel, {
  foreignKey: {
    name: "idCommunes",
    allowNull: false,
  },
});
// Ensure the table is created and ready to use
(async () => {
  await sequelize.sync({ force: false });
  // Additional code for initialization, if needed
})();

export default CommunesModel;
