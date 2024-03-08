import { Sequelize, Model, DataTypes } from "sequelize";
import { sequelize } from "../utils/connect";
import UtilisateursModel from "./utilisateurs.model";

interface RolesAttributes {
    id: number;
    libelle: string;
    // Add other attributes if needed
}

class RolesModel extends Model<RolesAttributes> implements RolesAttributes {
    public id!: number;
    public libelle!: string;
    // Add other attributes if needed
}

RolesModel.init(
    {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
            allowNull: false,
        },
        libelle: {
            type: DataTypes.TEXT,
            allowNull: false,
        },
    },
    {
        sequelize,
        modelName: "roles",
        tableName: "roles",
        freezeTableName: true,
        timestamps: true,
    }
);
RolesModel.hasMany(UtilisateursModel, { 
    foreignKey: {
      name: 'idrole',
      allowNull: false,
  }
    });
  UtilisateursModel.belongsTo(RolesModel, { 
    foreignKey: {
      name: 'idrole',
      allowNull: false,
  }
    });
// Ensure the table is created and ready to use
(async () => {
    await sequelize.sync({ force: false });
    // Additional code for initialization, if needed
})();

export default RolesModel;
