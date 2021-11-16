class Users {
  String? id;
  bool? isVole;
  String? name;
  String? surname;
  String? phoneNumber;
  String? numChassi;

  Users({
    this.id,
    this.isVole,
    this.name,
    this.surname,
    this.phoneNumber,
    this.numChassi,
  });
}

List<Users> listsUsers = [
  Users(
    id: "61104444",
    isVole: false,
    name: "imdad",
    surname: "adelabou",
    phoneNumber: "+229 67558797",
    numChassi: "ASDSFDSF334",
  ),
  Users(
    id: "94600505",
    isVole: true,
    name: "FEMI",
    surname: "Facia",
    phoneNumber: "+229 67508491",
    numChassi: "DASDSAF324234",
  ),
  Users(
    id: "9617",
    isVole: true,
    name: "imdad",
    surname: "adelabou",
    phoneNumber: "+229 97018954",
    numChassi: "22DDDC333",
  ),
];
