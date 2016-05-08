TreeMapChart chart;
TreeMapChart chart2;
TreeMapChart chart3;
TreeMapChart chart4;

void setup() {
  size(1200,1200);
  String[][] countries = new String[][] {
    {"america","canada","quebec"},
    {"america","canada","montreal"},
    {"america","mexico","monterrey"},
    {"america","brazil","sao paulo"},
    {"europe","portugal","lisboa"},
    {"europe","portugal","porto"},
    {"europe","germany","munich"},
    {"europe","germany","berlin"},
    {"asia","india","bombay"},
    {"asia","china","shangai"},
    {"asia","china","pekin"}
  };
  
  float[][] values = new float[][]{{10},{20},{30},{20},{10},{20},{30},{40},{20},{10},{5}};
  
  TreeNode t = new TreeNode("World").makeTree(countries,values).update();
  chart = new TreeMapChart(10,10,400,400).tree(t).gap(2).update();
  chart.translate(0,100);
  
  
  String[][] kingdoms = new String[][] {
    {"Vertebrates","Reptiles","Snake"},
    {"Vertebrates","Reptiles","Crocodle"},
    {"Vertebrates","Fish","Shark"},
    {"Vertebrates","Amphibians","Frog"},
    {"Vertebrates","Birds","Swan"},
    {"Vertebrates","Mammals","Human"},
    {"Vertebrates","Mammals","Cow"},
    {"Invertebrates","Protozoa","Cell"},
    {"Invertebrates","Flatworms","Flukes"},
    {"Invertebrates","Annelid Worms","Leech"},
    {"Invertebrates","Echinoderms","Starfish"},
    {"Invertebrates","Coelenterates","Jellyfish"},
    {"Invertebrates","Molluscs","Snails"},
    {"Invertebrates","Arthropods","Arachnids"},
    {"Invertebrates","Arthropods","Crustaceans"},
    {"Invertebrates","Arthropods","Insects"},
    {"Invertebrates","Arthropods","Myriapods"},
  };
  
  float[][] values2 = new float[][]{{7},{12},{8},{23},{4},{100},{35},{98},{20},{1},{7},{2},{14},{33},{27},{22},{11}};
  
  TreeNode t2 = new TreeNode("Kingdoms").makeTree(kingdoms,values2).update();
  chart2 = new TreeMapChart(10,10,600,600).tree(t2).gap(2).update();  
  chart2.translate(450,0);

    
  String[][] programming = new String[][] {
    {"Web","HTML5","Brackets"},
    {"Web","HTML5","Sublime"},
    {"Web","Javascript","Sublime"},
    {"Web","CSS","Sublime"},
    {"Mobile","Android","Eclipse"},
    {"Mobile","Android","Altova"},
    {"Mobile","IOS","iOS SDK"},
    {"Mobile","IOS","MobiOne"},
    {"Database","T-SQL","SSMS"},
    {"Database","PL/SQL","Oracle"},
    {"Database","SQL/PSM","MySQL"},
    {"Other","Java","NetBeans"},
    {"Other","Java","Eclipse"},
    {"Other","C#","VS"},
  };
  
  float[][] values3 = new float[][]{{7},{12},{8},{23},{4},{35},{98},{20},{1},{7},{2},{33},{27},{22},{11}};
  
  TreeNode t3 = new TreeNode("Programming").makeTree(programming,values3).update();
  chart3 = new TreeMapChart(10,10,500,500).tree(t3).gap(2).update();  
  chart3.translate(0,550);
  
  String[][] other = new String[][] {
    {"Solar","PV","Panel"},
    {"Solar","STE","Panel"},
    {"Biomass","Biofuel","Bioethanol"},
    {"Wind","Turbine","Horizontal"},
    {"Wind","Turbine","Vertical"},
    {"Tidal","Turbine"},
    {"Geothermal","Dry"},
    {"Geothermal","Flash"},
    {"Geothermal","Binary"},
  };
  
  float[][] values4 = new float[][]{{55},{23},{12},{44},{23},{32},{22},{32},{17}};
  
  TreeNode t4 = new TreeNode("Energy").makeTree(other,values4).update();
  chart4 = new TreeMapChart(10,10,300,300).tree(t4).gap(2).update();  
  chart4.translate(650,650);  
  
}

void draw() {
  background(255);
  chart.draw();
  chart2.draw();
  chart3.draw();
  chart4.draw();
}