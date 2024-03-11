import AvoirVulnerabilite from "../models/avoirvulnerabilite.model";
import CommunesModel from "../models/communes.model";
import PersonnesModel from "../models/personnes.model";
import QuartiersModel from "../models/quartiers.model";
import VulnerabiliteModel from "../models/vulnerabilite.model";






export async function createAvoir(value: any) {

    let newAvoir = AvoirVulnerabilite.create(
        value
    );

    return newAvoir


}

export async function findAvoir(value: any) {
    const val = await AvoirVulnerabilite.findOne({
        where: { id: value }
    })
    return val
}

export async function getallstate(){
    const personnes = await PersonnesModel.findAll();
    const vulnerabilite = await VulnerabiliteModel.findAll();
    const quartiers = await QuartiersModel.findAll();
    const commune = await CommunesModel.findAll();

    const state = {
        "nbrePersonne": personnes.length,
        "nbreCommune":commune.length,
        "nbreVulnerabilite": vulnerabilite.length,
        "nbreQuartiers":quartiers.length
    }

    return state;

}

export async function getallAvoir() {

    const Avoir = await AvoirVulnerabilite.findAll();
    return Avoir;


}
export async function deleteAvoirid(id: number) {

    await AvoirVulnerabilite.destroy({
        where: {
            id: id
        }
    });
    return id;

}

export async function updatedAvoir(id: number, value: any) {
    const data = await AvoirVulnerabilite.update(value, {
        where: {
            id: id
        }
    });
    return data;
}