import AvoirVulnerabilite from "./avoirvulnerabilite.model";
import RolesModel from "./roles.models";


const { Sequelize, Model, DataTypes } = require("sequelize");
const { sequelize } = require("../utils/connect");

const PersonnesModel = sequelize.define("personnes", {
    id: {
        type: DataTypes.INTEGER(11),
        primaryKey: true,
        autoIncrement: true,
        allowNull: false,
    
    },
    nom: {
        type: DataTypes.TEXT,
        allowNull: false,
    },
    date_naissance: {
        type: DataTypes.DATE,
        allowNull: false,
    },
    statut: {
        type: DataTypes.TEXT,
        allowNull: false,
    },    
    region: {
        type: DataTypes.TEXT,
        allowNull: false,
    },
    sexe: {
        type: DataTypes.TEXT,
        allowNull: false,
    },    
    is_cni: {
        type: DataTypes.BOOLEAN,
        allowNull: false,
    },
    is_actenaissance: {
        type: DataTypes.BOOLEAN,
        allowNull: false,
    },
    is_autochtone: {
        type: DataTypes.BOOLEAN,
        allowNull: false,
    },
    is_handicape: {
        type: DataTypes.BOOLEAN,
        allowNull: false,
    },
    is_chef_menage: {
        type: DataTypes.BOOLEAN,
        allowNull: false,
    },
},
{
    freezeTableName: true,
    timestamps: true
}
);
PersonnesModel.hasMany(PersonnesModel, { foreignKey: 'Per_id' });
PersonnesModel.belongsTo(PersonnesModel, { foreignKey: 'Per_id' });


PersonnesModel.hasMany(AvoirVulnerabilite, { foreignKey: 'Per_id' });
AvoirVulnerabilite.belongsTo(PersonnesModel, { foreignKey: 'Per_id' });

(async () => {
  await sequelize.sync({ force: false });
  // Code here
})();
module.exports = PersonnesModel;
export default PersonnesModel;

























