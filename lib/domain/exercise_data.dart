import './test.dart';

class ExerciseData implements DomainType {
  int id;
  int sets;
  int reps;
  int currentWeight;
  int rest;
  List<int> weightHistory;

  void exportToCsv() {

  }

  void insertIntoDatabase() {
    
  }

  int getId() {
    return this.id;
  }

  int getSets() {
    return this.sets;
  }

  int getReps() {
    return this.reps;
  }

  int getCurrentWeight() {
    return this.currentWeight;
  }

  int getRest() {
    return this.rest;
  }

  List<int> getWeightHistory() {
    return this.weightHistory;
  }
}

//Need a way to go from csv and into database 
// Need to go from db into csv
// need to go from db to be displayed - this class already ???