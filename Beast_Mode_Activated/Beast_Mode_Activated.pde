class DataBroker {


  void loaddata() {

    String[] dnd = loadStrings("dnd.csv");
    println("there are " + dnd.length + " lines");
    for (int i = 0; i < dnd.length; i++) {
      println(dnd[i]);
    }
    
  }
}
