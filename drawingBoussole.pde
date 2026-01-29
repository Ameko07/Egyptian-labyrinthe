void drawBoussole(){
  pushMatrix();
  float rayon = 80;
  float centreX = width * 0.85;
  float centreY = height / 3 + 30;
  
  // Effet flou/ombre en arrière
  noStroke();
  fill(20, 20, 30, 150);
  ellipse(centreX, centreY, rayon * 2.6, rayon * 2.6);
  
  // Cercle principal avec dégradé simulé (effet waouh)
  for (int r = int(rayon); r > 0; r -= 4) {
    fill(100 + r, 80 + r/2, 180, 80);
    ellipse(centreX, centreY, r * 2, r * 2);
  }
  
  // Contour blanc
  noFill();
  stroke(255);
  strokeWeight(2);
  ellipse(centreX, centreY, rayon * 2, rayon * 2);
  
  // Aiguille : rouge vers le Nord
  float dx = cos(-angleB - HALF_PI);
  float dy = sin(-angleB - HALF_PI);
  stroke(255, 0, 0);
  strokeWeight(5);
  line(centreX, centreY,
       centreX + dx * rayon * 0.7,
       centreY + dy * rayon * 0.7);
  
  // Aiguille : grise vers le Sud
  stroke(100);
  strokeWeight(3);
  line(centreX, centreY,
       centreX - dx * rayon * 0.5,
       centreY - dy * rayon * 0.5);
  
  // Centre de la boussole
  noStroke();
  fill(255);
  ellipse(centreX, centreY, 10, 10);
  fill(255, 0, 0);
  ellipse(centreX, centreY, 5, 5);
  
  // Points cardinaux
  textAlign(CENTER, CENTER);
  textSize(18);
  fill(255); text("N", centreX, centreY - rayon + 15);
  fill(200); text("S", centreX, centreY + rayon - 15);
  fill(200); text("E", centreX + rayon - 15, centreY);
  fill(200); text("O", centreX - rayon + 15, centreY);
  popMatrix();


}
