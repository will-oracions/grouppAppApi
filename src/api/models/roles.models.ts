import { Sequelize, Model, DataTypes } from "sequelize";
import { sequelize } from "../utils/connect";
import UtilisateursModel from "./utilisateurs.model";
const rolesToGenerate = ['administrateur', 'organisation', 'agents','ong'];

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
const generateRolesIfNotExist = async () => {
    try {
      // Pour chaque rôle à générer
      for (const roleName of rolesToGenerate) {
        // Recherchez le rôle dans la base de données
        const existingRole = await RolesModel.findOne({ where: { libelle: roleName } });
  
        // Si le rôle n'existe pas, créez-le
        if (!existingRole) {
          await RolesModel.create({ id: 0,libelle: roleName });
          console.log(`Le rôle "${roleName}" a été créé.`);
        }
      }
      console.log('Génération des rôles terminée.');
    } catch (error) {
      console.error('Erreur lors de la génération des rôles :', error);
    }
  };
  generateRolesIfNotExist();
export default RolesModel;
