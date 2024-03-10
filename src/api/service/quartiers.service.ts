import CommunesModel from "../models/communes.model";
import QuartiersModel from "../models/quartiers.model";




export async function createQuartier(value: any) {

    let newQuartier = QuartiersModel.create(
        value
    );

    return newQuartier


}

export async function findQuartier(value: any) {
    const val = await QuartiersModel.findOne({
        where: { id: value }
    })
    return val
}



export async function getallQuartier() {

    const Quartier = await QuartiersModel.findAll({
        include:[
            {
                model: CommunesModel,

            }
        ]
    });
    return Quartier;


}
export async function deleteQuartierid(id: string) {

    await QuartiersModel.destroy({
        where: {
            id: id
        }
    });
    return id;

}
export async function getQuartierbyId(id: number) {

    const Quartier = await QuartiersModel.findByPk(id);
    return Quartier;


}
export async function updatedQuartier(id: string, value: any) {
    const data = await QuartiersModel.update(value, {
        where: {
            id: id
        }
    });
    return data;
}