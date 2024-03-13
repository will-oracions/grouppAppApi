import { Express } from "express";
import { AddOng, deleteOng, getAllOng, getOngById, updateOng } from "../controller/ong.controller";
const authentificationMiddleware = require("../middleware/authVerification");

function ong(app: Express) {

    /**
     * @swagger
     * '/api/ong':
     *  get:
     *     tags:
     *      - ong
     *     descriptions: Get all ong
     *     responses:
     *         200:
     *             description: all ong
     */
    app.get('/api/ong',authentificationMiddleware, getAllOng)

    /**
    * @swagger
    * '/api/ong/{id}':
    *  get:
    *     tags:
    *      - ong
    *     descriptions: Get ong by Id
    *     parameters:
    *       - in: path
    *         name: id
    *         required: true
    *         description: ID Obligatoire
    *         schema:
    *          type: string
    *     responses:
    *         200:
    *             description: Get ong by Id
    */
    app.get('/api/ong/:id',authentificationMiddleware, getOngById)

    /**
      * @swagger
      * '/api/ong/{id}':
      *  put:
      *     tags:
      *     - ong
      *     summary: Update  ong
      *     description: Update ong
      *     parameters:
      *          - in: path
      *            name: id
      *            required: true
      *            description: ID Obligatoire
      *            schema:
      *             type: string
      *     requestBody:
      *      required: true
      *      content:
      *        application/json:
      *           schema:
      *              $ref: '#/components/schemas/CreateOngInput'
      *     responses:
      *      200:
      *        description: Success
      *        content:
      *          application/json:
      *            schema:
      *              $ref: '#/components/schemas/CreateOngResponse'
      *      409:
      *        description: Conflict
      *      400:
      *        description: Bad request
      */
    app.put('/api/ong/:id',authentificationMiddleware, updateOng)
    /**
* @swagger
* '/api/ong':
*  post:
*     tags:
*     - ong
*     summary: Register ong
*     requestBody:
*      required: true
*      content:
*        application/json:
*           schema:
*              $ref: '#/components/schemas/CreateOngInput'
*     responses:
*      200:
*        description: Success
*        content:
*          application/json:
*            schema:
*              $ref: '#/components/schemas/CreateOngResponse'
*      409:
*        description: Conflict
*      400:
*        description: Bad request
*/
    app.post('/api/ong',authentificationMiddleware, AddOng)
    /**
     * @swagger
     * '/api/ong/{id}':
     *  delete:
     *     tags:
     *      - ong
     *     descriptions: Delete ong
     *     parameters:
     *       - in: path
     *         name: id
     *         required: true
     *         description: ID Obligatoire
     *         schema:
     *         type: string
     *     responses:
     *         200:
     *             description: Delete ong
     */
    app.delete('/api/ong/:id',authentificationMiddleware, deleteOng)

}
export default ong;