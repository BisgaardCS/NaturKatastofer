class DataBroker {
String[] death;

  void loadData() {
    death = loadStrings("dnd.csv");
    String [] deathList = split(death[0], ',');
    String[] token = splitTokens(death[1], ";"); 

    println("there are " + deathList.length + " death");
    for (int i = 0; i < deathList.length; i++) {
      println(token[1]);
    }
  }
}
