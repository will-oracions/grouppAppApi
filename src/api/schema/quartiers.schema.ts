import { number, object, string, TypeOf } from "zod";

/**
 * @openapi
 * components:
 *  schemas:
 *    CreateQuartierInput:
 *      type: object
 *      required:
 *        - libelle
 *      properties:
 *        libelle:
 *          type: string
 *          default: "kwat"
 *    CreateQuartierResponse:
 *      type: object
 *      properties:
 *        libelle:
 *          type: string
 *        id:
 *          type: string
 *        createdAt:
 *          type: string
 *        updatedAt:
 *          type: string
 */

export const CreateQuartierSchema = object({
  body: object({
    libelle: string({
      required_error: "le libelle est obligatoire ",
    }),

  })

});

