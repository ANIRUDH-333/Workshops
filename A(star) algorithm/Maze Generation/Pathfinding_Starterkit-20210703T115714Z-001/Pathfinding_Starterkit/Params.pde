class Params{
float f;
float g;
float h;
ArrayList<Pixel> Neighs;

Params(float g_,float h_){
 
  this.g = g_;
  this.h = h_;
   this.f = this.g+this.h;

}

Params(float g_){
 
  this.g = g_;
  
   this.f = this.g+this.h;

}

void setNeighs(SquareGrid grid){

}
}
