require("dotenv").config();

import env from "../../config/env";
import app from "./app";
import logger from "./helpers/logger";
import { connect } from "./utils/connect";

const port = env.PORT;
logger.info("Starting App...");

connect()
  .then(() => {
    logger.info(`Connexion reussie`);
    app.listen(port, () =>
      logger.info(`
      
🚀 Le server est en cours d'execution. http//127.0.0.1:${port}
      
      `)
    );
  })
  .catch(() => logger.error(`Connexion échouée`));
