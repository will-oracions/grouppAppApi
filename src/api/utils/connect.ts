import env from "../../../config/env";
import logger from "../helpers/logger";
import { sequelize } from "./database/sequelize";

const databaseConfig = `

DATABASE_URL=${env.DATABASE_URL}
DATABASE_LOGGING=${env.DATABASE_LOGGING}
DATABASE_SYNC=${env.DATABASE_SYNC}

`;
// DATABASE_PROVIDER=${env.DATABASE_PROVIDER}
// DATABASE_HOST=${env.DATABASE_HOST}
// DATABASE_PORT=${env.DATABASE_PORT}
// DATABASE_NAME=${env.DATABASE_NAME}
// DATABASE_USER=${env.DATABASE_USER}
// DATABASE_PASSWORD=${env.DATABASE_PASSWORD}

export const connect = async () => {
  logger.info(`\nConnexion à la base de donnée: ${databaseConfig}`);
  return sequelize.authenticate();
};
