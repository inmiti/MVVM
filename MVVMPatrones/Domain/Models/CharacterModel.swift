//
//  File.swift
//  MVVMPatrones
//
//  Created by ibautista on 3/10/23.
//

import Foundation

//Typealias
typealias CharactersModel = [CharacterModel]

//Modelo
struct CharacterModel {
    var name: String
    var job: String
    var image: String?
    var description: String
}

//Datos recibidos
var sampleCharacterData: CharactersModel =
[
    CharacterModel(name: "Bart Simpson",
                   job: "Estudiante en la Escuela primaria de Springfield",
                   image: "bart_simpson",  // si se llama igual al archivo en assets se carga automatico.
                   description: "conocido como El Barto y Bartman , es el hijo mayor travieso, rebelde, incomprendido y potencialmente peligroso de Homer y Marge Simpson, y el hermano de Lisa y Maggie Simpson"),
    CharacterModel(name: "Homer Simpson",
                   job: "Inspector de Seguridad Nuclear Ex Supervisor Técnico",
                   image: "homer_simpson",
                   description: "Homer Jay Simpson , anteriormente conocido como Max Power , es el padre de la familia Simpson. Tiene sobrepeso, es perezoso e ignorante, pero también es muy devoto de su esposa e hijos. Trabaja como inspector de seguridad de bajo nivel en la planta de energía nuclear de Springfield"),
    CharacterModel(name: "Jiff Simpson",
                   job: "Desconocido",
                   image: "jiff_simpson",
                   description: "Jiff Simpson , también conocido como Kirk Simpson ,es el hijo menor de Bart Simpson y Jenda."),
    CharacterModel(name: "Marge Simpson",
                   job: "Ama de casa",
                   image: "marge_simpson",
                   description: "Marjorie Marge B. Simpson ,  (de soltera Bouvier ; nacida el 19 de marzo  ), es la feliz ama de casa y madre de tiempo completo de la familia Simpson . Con su esposo Homer , tiene tres hijos: Bart , Lisa y Maggie Simpson . Marge es la fuerza moralista en su familia y, a menudo, proporciona una voz fundamental en medio de las payasadas de su familia al tratar de mantener el orden en la casa de los Simpson. Aparte de sus deberes en el hogar, Marge coqueteó brevemente con una serie de carreras que van desde oficial de policía hasta activista contra la violencia."),
    CharacterModel(name: "Lisa Simpson",
                   job: "Estudiante en la escuela primaria de Springfield, Agente CTU, Monitor de pasillo, Anteriormente: Niñera ",
                   image: "lisa_simpson",
                   description: "Lisa Marie Simpson (nacida el 9 de mayo ) es una carismática niña de 8 años que supera el nivel de rendimiento estándar de los niños de su edad. No para sorpresa de todos, ella también es el centro moral de su familia. En su educación, Lisa carece de la participación de los padres de Homer y Marge, lo que la lleva a pasatiempos como tocar el saxofón y la guitarra, montar y cuidar caballos, e interés en estudios avanzados. En la escuela, la popularidad de Lisa se ve afectada por aquellos que la ven como una superdotada geek, lo que la deja con solo unos pocos amigos. Lisa Simpson es una niña inteligente, ingeniosa e independiente que se enfoca en sus metas y se esfuerza por alcanzar su potencial, y a los 8 años ya es miembro de MENSA con un coeficiente intelectual de 159."),
    CharacterModel(name: "Abraham Simpson",
                   job: "Miembro veterano de la Segunda Guerra Mundial",
                   image: "abraham_simpson",
                   description: "Abraham Abe Jay Simpson, generalmente conocido como el abuelo Simpson o simplemente el abuelo , es el patriarca de la familia Simpson, el padre de Homer Simpson , Herbert Powell y Abbey y el abuelo de Bart , Lisa y Maggie . simpson _ Abe es un veterano de la Segunda Guerra Mundial enviado más tarde al Castillo de Retiro de Springfield por Homer. Es conocido por sus historias largas, incoherentes y, a menudo, inexactas y por su incompetencia general."),
    CharacterModel(name: "Maggie Simpson",
                   job: "Sin Ocupacion",
                   image: "maggie_simpson",
                   description: "Margaret Lenny Maggie Simpson es la hija menor de Marge y Homer , y hermana de Bart y Lisa . Casi siempre se la ve chupando su chupete y, cuando camina, tropieza con su ropa y cae de cara. Debido a que no puede caminar ni hablar, Maggie es la menos vista en la familia Simpson ."),
    CharacterModel(name: "Mona J. Simpson",
                   job: "Fugitivo Ex hippie y activista político",
                   image: "mona_simpson",
                   description: "Mona J. Simpson  (de soltera Olsen ), también conocida como Martha Stewart , Muddy Mae Suggins , Anita Bonghit , Mona Stevens y Penelope Olsen , fue la madre de Homer Simpson , ex esposa de Abraham Simpson , suegra. de Marge Simpson y abuela de Bart , Lisa y Maggie .")
]



