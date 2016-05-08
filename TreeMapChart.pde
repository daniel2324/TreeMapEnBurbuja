float ANGLE = 0;
float ADJUST = 0.45;
boolean VALUE = false;

class TreeMapChart extends Group {
  float _x,_y,_w,_h,_gap;
  TreeNode _tree;
  TreeMapChart(float a,float b,float c,float d) {
    _x=a; _y=b; _w=c; _h=d;
  }
  TreeMapChart gap(float a) {_gap=a;return this;}
  TreeMapChart tree(TreeNode a) {_tree=a;return this;}
  TreeMapChart update() {
    empty();
    makeWorld(_tree,_x + _w/2,_y + _h/2,_w,_h);
    return this;
  }
  
  void makeText(float x, float y, float w, float h, TreeNode node) {
    String name = node.name();
    int size = name.length();
    if(!node.isLeave()) {
      add(newText(name,x - size*3, y - h/2 + 5)); 
    }
    else {
      add(newText(name,x - size*3, y)); 
    }
    if(VALUE && node.isLeave()){
      add(newText(name,x - size*3, y+5));
    }
    if(VALUE && !node.isLeave()){
      add(newText(name,x - size*3, y));
    }
  }
  
  void makeWorld(TreeNode node,float x,float y,float w,float h) {
    ArrayList<TreeNode> children = null;
    float rand = random(0,1);
    float angle = ANGLE;
    float newx = 0;
    float newy = 0;
    int count = 0;
    color fill = color(random(100,255), random(100,255), random(100,255), random(100,255));
    TreeNode temp = null;
    //add(new Ellipse(x, y, w, h).fillColor(fill));
    add(new Ellipse(x, y, w, h).fillColor(fill).strokeColor(NONE));
    makeText(x, y, w, h, node);
    
    if(node.childCount() == 0) {
      count = 0;
    }
    else {
      children = node.children();
      count = children.size();      
    }
    if(count == 1) {
      temp = children.get(0);
      makeWorld(temp, x, y, w - w/3, h - h/3);
    }
    else {
      for(int i = 0; i < count; i++) {
        angle += 360/count;
        newx = x + cos(radians(angle))*(w/(4));
        newy = y + sin(radians(angle))*(h/(4));
        temp = children.get(i);
        if(count > 3)
          makeWorld(temp, newx, newy, w/(count-1), h/(count-1));
        else
          makeWorld(temp, newx, newy, w/(count), h/(count));
      }
    }
  } 
}