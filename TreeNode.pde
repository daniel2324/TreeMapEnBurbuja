class TreeNode {
  private String _name;
  private float[] _values;
  private ArrayList <TreeNode> _children;
  private TreeNode _parent;
  private int _height;
  private int _leaves;
  private boolean _isLeave = true;
  
  TreeNode(String a) {_name=a;}
  TreeNode name(String a) {_name=a;return this;}
  TreeNode values(float[] a) {_values=a; return this;}
  TreeNode add(TreeNode a) {
    if (_children==null) 
      _children = new ArrayList <TreeNode>();
    _children.add(a); a.parent(this); 
    _isLeave=false; return this;
  }
  TreeNode get(int a) {return _children.get(a);}
  TreeNode child(String a) {
    if (_children==null) return null;
    for (int i=0;i<_children.size();i++)
      if (_children.get(i).name()==a) 
        return _children.get(i);
    return null;
  }
  TreeNode remove(int a) {_children.remove(a); return this;}
  TreeNode parent(TreeNode a) {_parent=a; return this;}
  TreeNode height(int a) {_height=a; return this;}
  int childCount() {return(_children==null?0:_children.size());}
  int leaves() {return _leaves;}
  String name() {return _name;}
  float[] values() {return _values;}
  ArrayList <TreeNode> children() {return _children;}
  TreeNode parent() {return _parent;}
  int height() {return _height;}
  boolean isLeave() {return _isLeave;}
  TreeNode makeTree(String[][] items, float[][] values) {
    TreeNode root = new TreeNode(_name);
    for (int i=0;i<items.length;i++)
      appendNode(root,items[i],0);
    appendValues(root,values,0);
    return root;
  }
  void appendNode(TreeNode node,String[] data,int level) {
    if (level==data.length) return;
    TreeNode child = node.child(data[level]);
    if (child==null) {
      child = new TreeNode(data[level]);
      node.add(child);
    }
    appendNode(child,data,level+1);
  }
  int appendValues(TreeNode node, float[][] values, int pos) {
    int index = pos;
    if (node.isLeave()) {
      node.values(values[index]);
      index++;
    }
    for (int i=0;i<node.childCount();i++)
      index = appendValues(node.get(i),values,index);
    return index;
  }
  TreeNode update() {
    updateHeight(this);
    updateLeaves(this);
    updateValues(this);
    return this;
  }
  int updateHeight(TreeNode node) {
    node.height(0);
    for (int i=0;i<node.childCount();i++) {
      int aux = updateHeight(node.get(i));
      if (aux>=node.height())
        node.height(aux+1);
    }
    return node.height();
  }
  int updateLeaves(TreeNode node) {
    if (node.childCount()==0) return 1;
    int count = 0;
    for (int i=0;i<node.childCount();i++) {
      count += updateLeaves(node.get(i));
    }
    node._leaves=count;
    return node.leaves();
  }
  float[] updateValues(TreeNode node) {
    for (int i=0;i<node.childCount();i++) {
      float[] aux = updateValues(node.get(i));
      if (node.values()==null)
        node.values(sumArray(aux,null));
      else
        node.values(sumArray(node.values(),aux));
    }
    return node.values();
  }
  float[] sumArray(float[] a,float[] b) {
    float[] aux = new float[a.length];
    for (int i=0;i<a.length;i++)
      if (b==null) aux[i]=a[i];
      else aux[i]=a[i]+b[i];
    return aux;
  }
  void output() {
    output(this,0);
  }
  void output(TreeNode t,int level) {
    for(int i=0;i<level;i++) print("  ");
    println(t.name()+":"+t.height()+":"+t.leaves()+":"+t.values()[0]);
    for (int i=0;i<t.childCount();i++)
      output(t.get(i),level+1);
  }
}