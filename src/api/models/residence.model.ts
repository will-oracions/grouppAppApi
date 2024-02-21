
const { Sequelize, Model, DataTypes } = require("sequelize");
const { sequelize } = require("../utils/connect");

const ResidenceModel = sequelize.define("residence", {
    id: {
        type: DataTypes.INTEGER(11),
        primaryKey: true,
        autoIncrement: true,
        allowNull: false,
    
    },
    description: {
        type: DataTypes.TEXT,
        allowNull: false,
    }

},
{
    freezeTableName: true,
    timestamps: true
}
);

(async () => {
  await sequelize.sync({ force: false });
  // Code here
})();
module.exports = ResidenceModel;
export default ResidenceModel;

























