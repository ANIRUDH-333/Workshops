import peasy.PeasyCam;
PeasyCam cam;

//Grid to build maze on
SquareGrid g;


//State of Grid
int[][] state;



int grid[][];
void setup(){
   cam = new PeasyCam(this,1000);
   //Set size,Renderer
   size(600,600,P3D);
   //Initialise Grid
   g  = new SquareGrid(30,30);
   
   


   
   //Initialise the initial state
   state = new int[30][30];
    for(int x=0;x<state.length;x++)
      for(int y=0;y<state[0].length;y++){
      state[x][y]=1;
      }
   
   
   state[14][14]=0;
   //state[13][14]=0;
   //state[12][14]=0;
   //state[12][13]=0;
 
   


   




}


void draw(){
translate(-width/2,-height/2);
lights();
background(0);



//Logic for Changing GridArray
//Breaking wall from cell(i,j) -> cell(( i+1,j) or(i,j+1) ) tellign state[i+1][j]=0; or state[i][j+1]=0;



g.arraytoGrid(state);


//Draw the Space
g.show();



}
