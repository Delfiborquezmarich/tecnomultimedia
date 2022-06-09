void ilusion () {

  float tono = map(mouseY, 0, height, 200, 100);

  fill (0, 0, 0, tono);
  noStroke();

  triangle(0, 0, 0, 600, 600, 600);
}
