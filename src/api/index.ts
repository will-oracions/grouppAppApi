require("dotenv").config();

import env from "../../config/env";
import app from "./app";
import logger from "./helpers/logger";
import { connect } from "./utils/connect";
import { sequelize } from "./utils/database/sequelize";

const port = env.PORT;
logger.info("Starting App...");

const startApp = () =>
  app.listen(port, () =>
    logger.info(`

🚀 Le server est en cours d'execution. http//127.0.0.1:${port}

`)
  );

connect()
  .then(() => {
    logger.info(`Connexion reussie`);

    if (env.DATABASE_SYNC === true) {
      logger.info("Synchronisation avec la base de donnée ++++++++");

      sequelize
        .sync({ force: true })
        .then(() => {
          logger.info("Base de données synchronisée avec succès");
          startApp();
        })
        .catch((err: any) => {
          logger.error(
            "Erreur lors de la synchronisation de la base de données :"
          );
          logger.error(err.message);
          console.error(err);
        });
    } else {
      startApp();
    }
  })
  .catch((error) => {
    logger.error(`Connexion échouée`);
    console.log(error.message);
  });

// Import des dépendances
// import express, { Request, Response } from "express";
// import { Sequelize, DataTypes } from "sequelize";
// import env from "../../config/env";

// // Configuration de la connexion à la base de données
// const sequelize = new Sequelize(env.DATABASE_URL, { logging: false });

// // Définition des modèles Sequelize pour Book et Author
// const Book = sequelize.define("Book", {
//   title: {
//     type: DataTypes.STRING,
//     allowNull: false,
//   },
//   // Si vous avez besoin de plus de champs, ajoutez-les ici
// });

// const Author = sequelize.define("Author", {
//   name: {
//     type: DataTypes.STRING,
//     allowNull: false,
//   },
//   // Si vous avez besoin de plus de champs, ajoutez-les ici
// });

// // Relations entre les modèles
// Author.hasMany(Book);
// Book.belongsTo(Author);

// sequelize
//   .sync({ force: true })
//   .then(() => {
//     console.log("Base de données synchronisée avec succès");
//   })
//   .catch((err: any) => {
//     console.error(
//       "Erreur lors de la synchronisation de la base de données :",
//       err
//     );
//   });

// // Création de l'application Express
// const app = express();
// app.use(express.json());

// // Routes pour gérer les livres
// app.get("/books", async (req: Request, res: Response) => {
//   const books = await Book.findAll();
//   res.json(books);
// });

// app.post("/books", async (req: Request, res: Response) => {
//   const { title, authorId } = req.body;
//   const book = await Book.create({ title, AuthorId: authorId });
//   res.json(book);
// });

// // Routes pour gérer les auteurs
// app.get("/authors", async (req: Request, res: Response) => {
//   const authors = await Author.findAll({ include: Book });
//   res.json(authors);
// });

// app.post("/authors", async (req: Request, res: Response) => {
//   const { name } = req.body;
//   const author = await Author.create({ name });
//   res.json(author);
// });

// // Démarrage du serveur
// const PORT = process.env.PORT || 3000;
// app.listen(PORT, () => {
//   console.log(`Server is running on port ${PORT}`);
// });
