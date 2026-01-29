void keyPressed() {
  
  println(dirX,dirY);
  
  if (key=='l') {
  inLab = !inLab;
  FreeCam = !FreeCam; 
}
  //-------------------Avancer----------------------
  if (anim==0 && keyCode==38) {
    if (!FreeCam){
       if  (joueurX+dirX ==  SortiesTabX[CurrentLaby][0] && joueurY+dirY == SortiesTabY[CurrentLaby][0] ) {
            if (CurrentLaby + 1 == ETAGES ){println("GG"); exit();}
              println("🎉 Tu passes à l'étage " + (CurrentLaby+1) + " !");

            CurrentLaby++;
            MposZ = 50*CurrentLaby*2; 
            MposX = 10;
            MposY = 10;
            joueurX = 1;
            joueurY = 0;
            dirX = 0.0f;
            dirY = 1.0f;
        } else if (joueurX+dirX>=0 && joueurX+dirX<21 && joueurY+dirY>=0 && joueurY+dirY<21 &&
          labyrinthe[CurrentLaby][int(joueurY+dirY)][int(joueurX+dirX)]!='#') {
          joueurX+=dirX; 
          joueurY+=dirY;
          anim=20;
          animT = true;
          animR = false;
          estDehors = false;
          noLights();
        }
    } else {
        joueurX+=dirX; 
        joueurY+=dirY; 
        }
  }
  //---------------Reculer-------------------
  if (anim==0 && keyCode==40) { 
     if ( !FreeCam){
       if (labyrinthe[CurrentLaby][int(joueurY-dirY)][int(joueurX-dirX)]!='#') {
          joueurX-=dirX; 
          joueurY-=dirY; 
        } 
     } else {
        joueurX-=dirX; 
        joueurY-=dirY; 
     }
  }
  
  //-----------------------Gauche - Droite --------------------------
  if (anim==0 && keyCode==37) { 
     if (FreeCam != true){
        odirX = dirX;
        odirY = dirY;
        anim = 20;
        float tmp = dirX; 
        dirX=dirY; 
        dirY=-tmp;
        animT = false;
        animR = true; 
      } else {
         float tmp = dirX;
        dirX = dirY;
         dirY = -tmp;
      }
  }
  if (anim==0 && keyCode==39) { 
    if (FreeCam != true){
      odirX = dirX;
      odirY = dirY;
      anim = 20;
      animT = false;
      animR = true;
      float tmp = dirX; 
      dirX=-dirY; 
      dirY=tmp;
      } else {
         float tmp = dirX;
         dirX = -dirY;
          dirY = tmp;
      }
  }
  
if (key == 'o') {
    println("Vue extérieure activée !");
    FreeCam = false;
    estDehors = true;
    inLab = false; 
    joueurX = -10;
    joueurY = -10;
    posZ = -30;
    dirX = 1;
    dirY = 1;
  }


  if (key == 'i') {
    println("Retour dans le labyrinthe !");
    inLab = true;
    estDehors = false;
    joueurX = debutX;
    joueurY = debutY;
    posZ = 0;
    dirX = 0;
    dirY = 1;
  }
}
