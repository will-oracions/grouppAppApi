import express from "express";
import config from "config";
import logger from './utils/logger';
import users from './routes/users.routes'
import swaggerDocs from "./utils/swagger";
import agents from "./routes/agents.routes";
import communes from "./routes/communes.routes";
import ong from "./routes/ong.routes";
import personnes from "./routes/personnes.routes";
import quartiers from "./routes/quartiers.routes";
import residence from "./routes/residence.routes";
import role from "./routes/role.routes";
import vulnerabilite from "./routes/vulnerabilite.routes";



const { sequelize, connect } = require("./utils/connect");

var cors = require('cors')
const port = config.get<number>('port');
const app = express();
app.use(express.json())
app.use(cors({
    origin:'*'
}))

app.listen(port, async ()=>{
    logger.info(`Server is running at http://localhost:${port}`);

    await connect();

    agents(app);
    communes(app);
     ong(app);
    personnes(app);
    quartiers(app);
    residence(app);
     role(app);
    vulnerabilite(app);
     users(app);

    swaggerDocs(app, port);
});




