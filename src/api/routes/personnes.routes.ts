import { Express } from "express";
import { AddPersonne, deletePersonne, getAllPersonne, getAllPersonneChef, getPersonneById, updatePersonne } from "../controller/personne.controller";

function personnes(app: Express) {

    /**
     * @swagger
     * '/api/personnes':
     *  get:
     *     tags:
     *      - personnes
     *     descriptions: Get all personnes
     *     responses:
     *         200:
     *             description: all personnes
     */
    app.get('/api/personnes', getAllPersonne)
    
    /**
    * @swagger
    * '/api/personnes/{id}':
    *  get:
    *     tags:
    *      - personnes
    *     descriptions: Get personnes by Id
    *     parameters:
    *       - in: path
    *         name: id
    *         required: true
    *         description: ID Obligatoire
    *         schema:
    *          type: string
    *     responses:
    *         200:
    *             description: Get personnes by Id
    */
    app.get('/api/personnes/:id', getPersonneById)

        /**
     * @swagger
     * '/api/chef/all/personnes':
     *  get:
     *     tags:
     *      - personnes
     *     descriptions: Get all personnes chef
     *     responses:
     *         200:
     *             description: all personnes chef
     */
        app.get('/api/chef/all/personnes', getAllPersonneChef)



    /**
      * @swagger
      * '/api/personnes/{id}':
      *  put:
      *     tags:
      *     - personnes
      *     summary: Update  personnes
      *     description: Update personnes
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
      *              $ref: '#/components/schemas/CreatePersonneInput'
      *     responses:
      *      200:
      *        description: Success
      *        content:
      *          application/json:
      *            schema:
      *              $ref: '#/components/schemas/CreatePersonneResponse'
      *      409:
      *        description: Conflict
      *      400:
      *        description: Bad request
      */
    app.put('/api/personnes/:id', updatePersonne)
    /**
* @swagger
* '/api/personnes':
*  post:
*     tags:
*     - personnes
*     summary: Register personnes
*     requestBody:
*      required: true
*      content:
*        application/json:
*           schema:
*              $ref: '#/components/schemas/CreatePersonneInput'
*     responses:
*      200:
*        description: Success
*        content:
*          application/json:
*            schema:
*              $ref: '#/components/schemas/CreatePersonneResponse'
*      409:
*        description: Conflict
*      400:
*        description: Bad request
*/
    app.post('/api/personnes', AddPersonne)
    /**
     * @swagger
     * '/api/personnes/{id}':
     *  delete:
     *     tags:
     *      - personnes
     *     descriptions: Delete personnes
     *     parameters:
     *       - in: path
     *         name: id
     *         required: true
     *         description: ID Obligatoire
     *         schema:
     *         type: string
     *     responses:
     *         200:
     *             description: Delete personnes
     */
    app.delete('/api/personnes/:id', deletePersonne)

}
export default personnes;