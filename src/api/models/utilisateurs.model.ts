import { Model, DataTypes } from "sequelize";
import { sequelize } from "../utils/connect";

interface UtilisateursAttributes {
    id: number;
    username: string;
    password: string;
    // Add other attributes if needed
}

class UtilisateursModel extends Model<UtilisateursAttributes> implements UtilisateursAttributes {
    public id!: number;
    public username!: string;
    public password!: string;
    // Add other attributes if needed
}

UtilisateursModel.init(
    {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
            allowNull: false,
        },
        username: {
            type: DataTypes.TEXT,
            allowNull: false,
        },
        password: {
            type: DataTypes.TEXT,
            allowNull: false,
        },
    },
    {
        sequelize,
        modelName: "utilisateurs",
        tableName: "utilisateurs",
        freezeTableName: true,
        timestamps: true,
    }
);

// Ensure the table is created and ready to use
(async () => {
    await sequelize.sync({ force: false });
    // Additional code for initialization, if needed
})();

export default UtilisateursModel;
