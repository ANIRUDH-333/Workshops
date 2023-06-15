
class SquareGrid{
  
  /*
  SquareGrid(xpixels,ypixels)
  Should be used in conjunction with a 2d application. 
  xpixels:number of pixels in x direction
  y:pixels:number of pixels in y direction
  Pixels size will be calculated based on the window size
  
  SquareGrid(xpixels,ypixels,zpixels)
  Should be used in conjunction with a 2d application. 
  xpixels:number of pixels in x direction
  y:pixels:number of pixels in y direction
   z:pixels:number of pixels in z direction
  Pixels size will be calculated based on the window size
  */
 

float x_pixels;
float y_pixels;
float z_pixels;

float pixel_size;

public Pixel pixs2d[][];

public Pixel pixs3d[][][];

private boolean is3D;

 SquareGrid(float xpixels, float ypixels){
    is3D = false;
     this.x_pixels = xpixels;
    this.y_pixels = ypixels;
    this.z_pixels =0;
    
    this.pixel_size = width/xpixels;
    pixs2d = new Pixel[(int) xpixels][(int) ypixels];
    
    

    
    
    for(int x =0; x<x_pixels;x++){
      
        for(int y=0;y<y_pixels;y++){
          pixs2d[x][y] = new Pixel(x*( this.pixel_size) , y*(this.pixel_size) , this.pixel_size );
          
         
        
        }
    }
    
    
    
    


}

SquareGrid(float xpixels,float ypixels ,float zpixels){
  is3D  = true;
  
  this.x_pixels = xpixels;
  this.y_pixels = ypixels;
  this.z_pixels = zpixels;
  
   this.pixel_size = width/xpixels;
   this.pixs3d = new Pixel[(int) xpixels][(int) ypixels][(int) zpixels];
    
  
  for(int x =0; x<x_pixels;x++){
      
        for(int y=0;y<y_pixels;y++){
          
            for(int z=0;z<z_pixels;z++){
              pixs3d[x][y][z] = new Pixel(x*( this.pixel_size) , y*(this.pixel_size) , z*(this.pixel_size) , this.pixel_size );
            
            }
          
          
         
        
        }
    }
  
  
  
  
  
  

}


void arraytoGrid(int arr2d[][]){
 /*
 Takes an binary array and sets pixel.state based on the array.
 */
  
  for(int x=0; x<arr2d.length ; x++){
    for(int y=0; y<arr2d[x].length; y++){
  
      this.pixs2d[x][y].setState(arr2d[x][y]); 
      
      
    }
  }
  
  
 


}




void arraytoGrid(int arr3d[][][]){
  /*
 Takes an binary array and sets pixel.state based on the array.
 */
  
  for(int x=0; x<arr3d.length ; x++){
    for(int y=0; y<arr3d[x].length; y++){
      for(int z=0; z<arr3d[x][y].length;z++){
          
      this.pixs3d[x][y][z].setState(arr3d[x][y][z]); 
          
      }
      
    }
  }
}
  
void show(){
  //printing the pixels in screen
  
  if(!this.is3D){
   for(int x =0; x<x_pixels;x++){
      
        for(int y=0;y<y_pixels;y++){
          pixs2d[x][y].show();
         
        
        }
    }
  }
  if(this.is3D){
    
    for(int x =0; x<x_pixels;x++){
      
        for(int y=0;y<y_pixels;y++){
          for(int z=0;z<z_pixels;z++)
           pixs3d[x][y][z].show();
         
        
        }
    }
  
  
  }

}

}
