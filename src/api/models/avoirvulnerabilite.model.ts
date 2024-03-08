import VulnerabiliteModel from "./vulnerabilite.model";
import { Model, DataTypes, Optional } from "sequelize";
import { sequelize } from "../utils/connect";

interface AvoirVulnerabiliteAttributes {
    id: number;
}

interface AvoirVulnerabiliteCreationAttributes
    extends Optional<AvoirVulnerabiliteAttributes, "id"> {}

class AvoirVulnerabilite
    extends Model<AvoirVulnerabiliteAttributes, AvoirVulnerabiliteCreationAttributes>
    implements AvoirVulnerabiliteAttributes {
    public id!: number;

    // Add other attributes if needed

    // Timestamps are managed by Sequelize, so no need to define them here.

    // Define associations

}

AvoirVulnerabilite.init(
    {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
            allowNull: false,
        },
    },
    {
        sequelize,
        modelName: "avoirvulnerabilite",
        freezeTableName: true,
        timestamps: true,
    }
);
VulnerabiliteModel.hasMany(AvoirVulnerabilite, {
    foreignKey: {
        name: 'idvulnerabilite',
        allowNull: false,
    },
});
AvoirVulnerabilite.belongsTo(VulnerabiliteModel, {
    foreignKey: {
        name: 'idvulnerabilite',
        allowNull: false,
    },
});
// Ensure the table is created and ready to use
(async () => {
    await sequelize.sync({ force: false });
    // Additional code for initialization, if needed
})();

export default AvoirVulnerabilite;
