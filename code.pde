void setup(){
    size(400, 400);
    frameRate(1);
    background(0, 0, 0);
}

//variables used throughout the game
var screen = 0;
var colors = [
    //yellow
    color(255, 255, 0),
    //orange
    color(255, 200, 0),
    //light orange
    color(255, 220, 90),
    //green 1
    color(170, 235, 91),
    //green 2
    color(85, 227, 77),
    //green 3
    color(45, 191, 32),
    //green 4
    color(34, 156, 23),
    //green
    color(18, 115, 9),
];
//function that draws a pineapple, requires parameters size, which is the size of a pineapple pixel, x, which is the x location of the bottom left pixel, and y, which is the y location of the bottom left pixel
var drawPineapple = function(size, x, y, face){
    noStroke();
    //row 1
    fill(colors[1]);
    quad(x, y, x, y+size, x+size, y+size, x+size, y);
    fill(colors[0]);
    quad(x+size, y, x+size, y+size, x+size*2, y+size, x+size*2, y);
    fill(colors[1]);
    quad(x+size*2, y, x+size*2, y+size, x+size*4, y+size, x+size*4, y);
    fill(colors[0]);
    quad(x+size*4, y, x+size*4, y+size, x+size*5, y+size, x+size*5, y);
    fill(colors[1]);
    quad(x+size*5, y, x+size*5, y+size, x+size*6, y+size, x+size*6, y);
    //row 2
    fill(colors[0]);
    quad(x-size, y-size, x-size, y, x+size*7, y, x+size*7, y-size);
    //row 3
    quad(x-size*2, y-size*2, x-size*2, y-size, x+size, y-size, x+size, y-size*2);
    fill(colors[1]);
    quad(x+size, y-size*2, x+size, y-size, x+size*3, y-size, x+size*3, y-size*2);
    fill(colors[0]);
    quad(x+size*3, y-size*2, x+size*3, y-size, x+size*6, y-size, x+size*6, y-size*2);
    fill(colors[2]);
    quad(x+size*6, y-size*2, x+size*6, y-size, x+size*8, y-size, x+size*8, y-size*2);
    //row 4
    fill(colors[0]);
    quad(x-size*3, y-size*3, x-size*3, y-size*2, x-size, y-size*2, x-size, y-size*3);
    fill(colors[2]);
    quad(x-size, y-size*3, x-size, y-size*2, x, y-size*2, x, y-size*3);
    fill(colors[0]);
    quad(x, y-size*3, x, y-size*2, x+size, y-size*2, x+size, y-size*3);
    fill(colors[2]);
    quad(x+size, y-size*3, x+size, y-size*2, x+size*2, y-size*2, x+size*2, y-size*3);
    fill(colors[0]);
    quad(x+size*2, y-size*3, x+size*2, y-size*2, x+size*4, y-size*2, x+size*4, y-size*3);
    fill(colors[1]);
    quad(x+size*4, y-size*3, x+size*4, y-size*2, x+size*5, y-size*2, x+size*5, y-size*3);
    fill(colors[0]);
    quad(x+size*5, y-size*3, x+size*5, y-size*2, x+size*6, y-size*2, x+size*6, y-size*3);
    fill(colors[1]);
    quad(x+size*6, y-size*3, x+size*6, y-size*2, x+size*7, y-size*2, x+size*7, y-size*3);
    fill(colors[0]);
    quad(x+size*7, y-size*3, x+size*7, y-size*2, x+size*9, y-size*2, x+size*9, y-size*3);
    //row 5
    quad(x-size*3, y-size*4, x-size*3, y-size*3, x-size, y-size*3, x-size, y-size*4);
    fill(colors[2]);
    quad(x-size, y-size*4, x-size, y-size*3, x, y-size*3, x, y-size*4);
    fill(colors[1]);
    quad(x, y-size*4, x, y-size*3, x+size, y-size*3, x+size, y-size*4);
    fill(colors[2]);
    quad(x+size, y-size*4, x+size, y-size*3, x+size*2, y-size*3, x+size*2, y-size*4);
    fill(colors[0]);
    quad(x+size*2, y-size*4, x+size*2, y-size*3, x+size*4, y-size*3, x+size*4, y-size*4);
    fill(colors[2]);
    quad(x+size*4, y-size*4, x+size*4, y-size*3, x+size*6, y-size*3, x+size*6, y-size*4);
    fill(colors[1]);
    quad(x+size*6, y-size*4, x+size*6, y-size*3, x+size*7, y-size*3, x+size*7, y-size*4);
    fill(colors[0]);
    quad(x+size*7, y-size*4, x+size*7, y-size*3, x+size*9, y-size*3, x+size*9, y-size*4);
    //row 6
    quad(x-size*3, y-size*5, x-size*3, y-size*4, x+size*9, y-size*4, x+size*9, y-size*5);
    //row 7
    fill(colors[2]);
    quad(x-size*3, y-size*6, x-size*3, y-size*5, x-size*2, y-size*5, x-size*2, y-size*6);
    fill(colors[3]);
    quad(x-size*2, y-size*6, x-size*2, y-size*5, x-size*1, y-size*5, x-size*1, y-size*6);
    fill(colors[0]);
    quad(x-size*1, y-size*6, x-size*1, y-size*5, x+size*2, y-size*5, x+size*2, y-size*6);
    fill(colors[2]);
    quad(x+size*2, y-size*6, x+size*2, y-size*5, x+size*4, y-size*5, x+size*4, y-size*6);
    fill(colors[0]);
    quad(x+size*4, y-size*6, x+size*4, y-size*5, x+size*7, y-size*5, x+size*7, y-size*6);
    fill(colors[2]);
    quad(x+size*7, y-size*6, x+size*7, y-size*5, x+size*8, y-size*5, x+size*8, y-size*6);
    fill(colors[3]);
    quad(x+size*8, y-size*6, x+size*8, y-size*5, x+size*9, y-size*5, x+size*9, y-size*6);
    //row 8
    quad(x-size*3, y-size*7, x-size*3, y-size*6, x-size*2, y-size*6, x-size*2, y-size*7);
    fill(colors[0]);
    quad(x-size*2, y-size*7, x-size*2, y-size*6, x, y-size*6, x, y-size*7);
    fill(colors[3]);
    quad(x, y-size*7, x, y-size*6, x+size, y-size*6, x+size, y-size*7);
    fill(colors[0]);
    quad(x+size, y-size*7, x+size, y-size*6, x+size*2, y-size*6, x+size*2, y-size*7);
    fill(colors[3]);
    quad(x+size*2, y-size*7, x+size*2, y-size*6, x+size*3, y-size*6, x+size*3, y-size*7);
    fill(colors[0]);
    quad(x+size*3, y-size*7, x+size*3, y-size*6, x+size*5, y-size*6, x+size*5, y-size*7);
    fill(colors[3]);
    quad(x+size*5, y-size*7, x+size*5, y-size*6, x+size*6, y-size*6, x+size*6, y-size*7);
    fill(colors[0]);
    quad(x+size*6, y-size*7, x+size*6, y-size*6, x+size*7, y-size*6, x+size*7, y-size*7);
    fill(colors[2]);
    quad(x+size*7, y-size*7, x+size*7, y-size*6, x+size*8, y-size*6, x+size*8, y-size*7);
    fill(colors[0]);
    quad(x+size*8, y-size*7, x+size*8, y-size*6, x+size*9, y-size*6, x+size*9, y-size*7);
    //row 9
    fill(colors[4]);
    quad(x-size*3, y-size*8, x-size*3, y-size*7, x-size*2, y-size*7, x-size*2, y-size*8);
    fill(colors[0]);
    quad(x-size*2, y-size*8, x-size*2, y-size*7, x, y-size*7, x, y-size*8);
    fill(colors[3]);
    quad(x, y-size*8, x, y-size*7, x+size, y-size*7, x+size, y-size*8);
    fill(colors[4]);
    quad(x+size, y-size*8, x+size, y-size*7, x+size*3, y-size*7, x+size*3, y-size*8);
    fill(colors[0]);
    quad(x+size*3, y-size*8, x+size*3, y-size*7, x+size*5, y-size*7, x+size*5, y-size*8);
    fill(colors[4]);
    quad(x+size*5, y-size*8, x+size*5, y-size*7, x+size*7, y-size*7, x+size*7, y-size*8);
    fill(colors[3]);
    quad(x+size*7, y-size*8, x+size*7, y-size*7, x+size*8, y-size*7, x+size*8, y-size*8);
    fill(colors[0]);
    quad(x+size*8, y-size*8, x+size*8, y-size*7, x+size*9, y-size*7, x+size*9, y-size*8);
    //row 10
    quad(x-size*3, y-size*9, x-size*3, y-size*8, x+size*9, y-size*8, x+size*9, y-size*9);
    //row 11
    quad(x-size*3, y-size*10, x-size*3, y-size*9, x-size*2, y-size*9, x-size*2, y-size*10);
    fill(colors[4]);
    quad(x-size*2, y-size*10, x-size*2, y-size*9, x, y-size*9, x, y-size*10);
    fill(colors[0]);
    quad(x, y-size*10, x, y-size*9, x+size*3, y-size*9, x+size*3, y-size*10);
    fill(colors[3]);
    quad(x+size*3, y-size*10, x+size*3, y-size*9, x+size*4, y-size*9, x+size*4, y-size*10);
    fill(colors[4]);
    quad(x+size*4, y-size*10, x+size*4, y-size*9, x+size*5, y-size*9, x+size*5, y-size*10);
    fill(colors[0]);
    quad(x+size*5, y-size*10, x+size*5, y-size*9, x+size*8, y-size*9, x+size*8, y-size*10);
    fill(colors[4]);
    quad(x+size*8, y-size*10, x+size*8, y-size*9, x+size*9, y-size*9, x+size*9, y-size*10);
    //row 12
    fill(colors[0]);
    quad(x-size*3, y-size*11, x-size*3, y-size*10, x-size*2, y-size*10, x-size*2, y-size*11);
    fill(colors[4]);
    quad(x-size*2, y-size*11, x-size*2, y-size*10, x-size*1, y-size*10, x-size*1, y-size*11);
    fill(colors[0]);
    quad(x-size*1, y-size*11, x-size*1, y-size*10, x+size, y-size*10, x+size, y-size*11);
    fill(colors[3]);
    quad(x+size, y-size*11, x+size, y-size*10, x+size*2, y-size*10, x+size*2, y-size*11);
    fill(colors[0]);
    quad(x+size*2, y-size*11, x+size*2, y-size*10, x+size*3, y-size*10, x+size*3, y-size*11);
    fill(colors[4]);
    quad(x+size*3, y-size*11, x+size*3, y-size*10, x+size*4, y-size*10, x+size*4, y-size*11);
    fill(colors[0]);
    quad(x+size*4, y-size*11, x+size*4, y-size*10, x+size*6, y-size*10, x+size*6, y-size*11);
    fill(colors[4]);
    quad(x+size*6, y-size*11, x+size*6, y-size*10, x+size*7, y-size*10, x+size*7, y-size*11);
    fill(colors[0]);
    quad(x+size*7, y-size*11, x+size*7, y-size*10, x+size*8, y-size*10, x+size*8, y-size*11);
    fill(colors[4]);
    quad(x+size*8, y-size*11, x+size*8, y-size*10, x+size*9, y-size*10, x+size*9, y-size*11);
    //row 13
    fill(colors[3]);
    quad(x-size*3, y-size*12, x-size*3, y-size*11, x-size*2, y-size*11, x-size*2, y-size*12);
    fill(colors[4]);
    quad(x-size*2, y-size*12, x-size*2, y-size*11, x-size, y-size*11, x-size, y-size*12);
    fill(colors[0]);
    quad(x-size, y-size*12, x-size, y-size*11, x+size, y-size*11, x+size, y-size*12);
    fill(colors[4]);
    quad(x+size, y-size*12, x+size, y-size*11, x+size*4, y-size*11, x+size*4, y-size*12);
    fill(colors[0]);
    quad(x+size*4, y-size*12, x+size*4, y-size*11, x+size*6, y-size*11, x+size*6, y-size*12);
    fill(colors[4]);
    quad(x+size*6, y-size*12, x+size*6, y-size*11, x+size*8, y-size*11, x+size*8, y-size*12);
    fill(colors[3]);
    quad(x+size*8, y-size*12, x+size*8, y-size*11, x+size*9, y-size*11, x+size*9, y-size*12);
    //row 14
    fill(colors[0]);
    quad(x-size*2, y-size*13, x-size*2, y-size*12, x+size*8, y-size*12, x+size*8, y-size*13);
    //row 15
    quad(x-size*2, y-size*14, x-size*2, y-size*13, x-size, y-size*13, x-size, y-size*14);
    fill(colors[5]);
    quad(x-size, y-size*14, x-size, y-size*13, x, y-size*13, x, y-size*14);
    fill(colors[6]);
    quad(x, y-size*14, x, y-size*13, x+size, y-size*13, x+size, y-size*14);
    fill(colors[0]);
    quad(x+size, y-size*14, x+size, y-size*13, x+size*4, y-size*13, x+size*4, y-size*14);
    fill(colors[6]);
    quad(x+size*4, y-size*14, x+size*4, y-size*13, x+size*6, y-size*13, x+size*6, y-size*14);
    fill(colors[0]);
    quad(x+size*6, y-size*14, x+size*6, y-size*13, x+size*8, y-size*13, x+size*8, y-size*14);
    //row 16
    fill(colors[6]);
    quad(x-size, y-size*15, x-size, y-size*14, x, y-size*14, x, y-size*15);
    fill(colors[0]);
    quad(x, y-size*15, x, y-size*14, x+size*2, y-size*14, x+size*2, y-size*15);
    fill(colors[6]);
    quad(x+size*2, y-size*15, x+size*2, y-size*14, x+size*3, y-size*14, x+size*3, y-size*15);
    fill(colors[0]);
    quad(x+size*3, y-size*15, x+size*3, y-size*14, x+size*4, y-size*14, x+size*4, y-size*15);
    fill(colors[6]);
    quad(x+size*4, y-size*15, x+size*4, y-size*14, x+size*5, y-size*14, x+size*5, y-size*15);
    fill(colors[0]);
    quad(x+size*5, y-size*15, x+size*5, y-size*14, x+size*7, y-size*14, x+size*7, y-size*15);
    //row 17
    fill(colors[6]);
    quad(x, y-size*16, x, y-size*15, x+size, y-size*15, x+size, y-size*16);
    fill(colors[0]);
    quad(x+size, y-size*16, x+size, y-size*15, x+size*2, y-size*15, x+size*2, y-size*16);
    fill(colors[5]);
    quad(x+size*2, y-size*16, x+size*2, y-size*15, x+size*4, y-size*15, x+size*4, y-size*16);
    fill(colors[6]);
    quad(x+size*4, y-size*16, x+size*4, y-size*15, x+size*5, y-size*15, x+size*5, y-size*16);
    fill(colors[7]);
    quad(x+size*5, y-size*16, x+size*5, y-size*15, x+size*6, y-size*15, x+size*6, y-size*16);
    //row 18
    fill(colors[6]);
    quad(x, y-size*17, x, y-size*16, x+size, y-size*16, x+size, y-size*17);
    fill(colors[7]);
    quad(x+size, y-size*17, x+size, y-size*16, x+size*2, y-size*16, x+size*2, y-size*17);
    fill(colors[6]);
    quad(x+size*2, y-size*17, x+size*2, y-size*16, x+size*3, y-size*16, x+size*3, y-size*17);
    fill(colors[4]);
    quad(x+size*3, y-size*17, x+size*3, y-size*16, x+size*4, y-size*16, x+size*4, y-size*17);
    fill(colors[6]);
    quad(x+size*4, y-size*17, x+size*4, y-size*16, x+size*5, y-size*16, x+size*5, y-size*17);
    fill(colors[7]);
    quad(x+size*5, y-size*17, x+size*5, y-size*16, x+size*6, y-size*16, x+size*6, y-size*17);
    fill(colors[6]);
    quad(x+size*7, y-size*17, x+size*7, y-size*16, x+size*8, y-size*16, x+size*8, y-size*17);
    //row 19
    quad(x-size*3, y-size*18, x-size*3, y-size*17, x-size*2, y-size*17, x-size*2, y-size*18);
    fill(colors[7]);
    quad(x, y-size*18, x, y-size*17, x+size*3, y-size*17, x+size*3, y-size*18);
    fill(colors[6]);
    quad(x+size*3, y-size*18, x+size*3, y-size*17, x+size*4, y-size*17, x+size*4, y-size*18);
    fill(colors[4]);
    quad(x+size*4, y-size*18, x+size*4, y-size*17, x+size*5, y-size*17, x+size*5, y-size*18);
    fill(colors[7]);
    quad(x+size*5, y-size*18, x+size*5, y-size*17, x+size*7, y-size*17, x+size*7, y-size*18);
    //row 20
    quad(x-size*2, y-size*19, x-size*2, y-size*18, x, y-size*18, x, y-size*19);
    fill(colors[6]);
    quad(x, y-size*19, x, y-size*18, x+size*2, y-size*18, x+size*2, y-size*19);
    fill(colors[7]);
    quad(x+size*2, y-size*19, x+size*2, y-size*18, x+size*3, y-size*18, x+size*3, y-size*19);
    fill(colors[6]);
    quad(x+size*3, y-size*19, x+size*3, y-size*18, x+size*4, y-size*18, x+size*4, y-size*19);
    fill(colors[4]);
    quad(x+size*4, y-size*19, x+size*4, y-size*18, x+size*5, y-size*18, x+size*5, y-size*19);
    fill(colors[7]);
    quad(x+size*5, y-size*19, x+size*5, y-size*18, x+size*6, y-size*18, x+size*6, y-size*19);
    //row 21
    quad(x, y-size*20, x, y-size*19, x+size, y-size*19, x+size, y-size*20);
    fill(colors[4]);
    quad(x+size, y-size*20, x+size, y-size*19, x+size*2, y-size*19, x+size*2, y-size*20);
    fill(colors[7]);
    quad(x+size*2, y-size*20, x+size*2, y-size*19, x+size*3, y-size*19, x+size*3, y-size*20);
    fill(colors[6]);
    quad(x+size*3, y-size*20, x+size*3, y-size*19, x+size*4, y-size*19, x+size*4, y-size*20);
    fill(colors[4]);
    quad(x+size*4, y-size*20, x+size*4, y-size*19, x+size*5, y-size*19, x+size*5, y-size*20);
    fill(colors[7]);
    quad(x+size*5, y-size*20, x+size*5, y-size*19, x+size*9, y-size*19, x+size*9, y-size*20);
    fill(colors[6]);
    quad(x+size*9, y-size*20, x+size*9, y-size*19, x+size*10, y-size*19, x+size*10, y-size*20);
    //row 22
    fill(colors[4]);
    quad(x-size, y-size*21, x-size, y-size*20, x+size*2, y-size*20, x+size*2, y-size*21);
    fill(colors[7]);
    quad(x+size*2, y-size*21, x+size*2, y-size*20, x+size*4, y-size*20, x+size*4, y-size*21);
    fill(colors[6]);
    quad(x+size*4, y-size*21, x+size*4, y-size*20, x+size*7, y-size*20, x+size*7, y-size*21);
    fill(colors[7]);
    quad(x+size*7, y-size*21, x+size*7, y-size*20, x+size*8, y-size*20, x+size*8, y-size*21);
    //row 23
    fill(colors[6]);
    quad(x-size*3, y-size*22, x-size*3, y-size*21, x-size*2, y-size*21, x-size*2, y-size*22);
    fill(colors[7]);
    quad(x-size*2, y-size*22, x-size*2, y-size*21, x-size, y-size*21, x-size, y-size*22);
    fill(colors[6]);
    quad(x+size, y-size*22, x+size, y-size*21, x+size*2, y-size*21, x+size*2, y-size*22);
    fill(colors[7]);
    quad(x+size*2, y-size*22, x+size*2, y-size*21, x+size*3, y-size*21, x+size*3, y-size*22);
    fill(colors[6]);
    quad(x+size*3, y-size*22, x+size*3, y-size*21, x+size*4, y-size*21, x+size*4, y-size*22);
    fill(colors[7]);
    quad(x+size*4, y-size*22, x+size*4, y-size*21, x+size*5, y-size*21, x+size*5, y-size*22);
    fill(colors[6]);
    quad(x+size*7, y-size*22, x+size*7, y-size*21, x+size*8, y-size*21, x+size*8, y-size*22);
    fill(colors[7]);
    quad(x+size*8, y-size*22, x+size*8, y-size*21, x+size*9, y-size*21, x+size*9, y-size*22);
    //row 24
    quad(x-size, y-size*23, x-size, y-size*22, x+size, y-size*22, x+size, y-size*23);
    fill(colors[4]);
    quad(x+size, y-size*23, x+size, y-size*22, x+size*2, y-size*22, x+size*2, y-size*23);
    fill(colors[6]);
    quad(x+size*2, y-size*23, x+size*2, y-size*22, x+size*3, y-size*22, x+size*3, y-size*23);
    fill(colors[7]);
    quad(x+size*3, y-size*23, x+size*3, y-size*22, x+size*4, y-size*22, x+size*4, y-size*23);
    fill(colors[6]);
    quad(x+size*4, y-size*23, x+size*4, y-size*22, x+size*5, y-size*22, x+size*5, y-size*23);
    fill(colors[7]);
    quad(x+size*5, y-size*23, x+size*5, y-size*22, x+size*6, y-size*22, x+size*6, y-size*23);
    //row 25
    fill(colors[6]);
    quad(x-size*6, y-size*24, x-size*6, y-size*23, x-size*5, y-size*23, x-size*5, y-size*24);
    fill(colors[7]);
    quad(x-size*3, y-size*24, x-size*3, y-size*23, x, y-size*23, x, y-size*24);
    fill(colors[4]);
    quad(x+size, y-size*24, x+size, y-size*23, x+size*2, y-size*23, x+size*2, y-size*24);
    fill(colors[6]);
    quad(x+size*2, y-size*24, x+size*2, y-size*23, x+size*3, y-size*23, x+size*3, y-size*24);
    fill(colors[7]);
    quad(x+size*3, y-size*24, x+size*3, y-size*23, x+size*4, y-size*23, x+size*4, y-size*24);
    fill(colors[6]);
    quad(x+size*4, y-size*24, x+size*4, y-size*23, x+size*5, y-size*23, x+size*5, y-size*24);
    fill(colors[7]);
    quad(x+size*5, y-size*24, x+size*5, y-size*23, x+size*7, y-size*23, x+size*7, y-size*24);
    fill(colors[4]);
    quad(x+size*7, y-size*24, x+size*7, y-size*23, x+size*8, y-size*23, x+size*8, y-size*24);
    //row 26
    fill(colors[7]);
    quad(x-size*5, y-size*25, x-size*5, y-size*24, x-size*2, y-size*24, x-size*2, y-size*25);
    fill(colors[6]);
    quad(x, y-size*25, x, y-size*24, x+size, y-size*24, x+size, y-size*25);
    fill(colors[4]);
    quad(x+size, y-size*25, x+size, y-size*24, x+size*2, y-size*24, x+size*2, y-size*25);
    fill(colors[6]);
    quad(x+size*2, y-size*25, x+size*2, y-size*24, x+size*3, y-size*24, x+size*3, y-size*25);
    fill(colors[7]);
    quad(x+size*3, y-size*25, x+size*3, y-size*24, x+size*4, y-size*24, x+size*4, y-size*25);
    fill(colors[6]);
    quad(x+size*4, y-size*25, x+size*4, y-size*24, x+size*5, y-size*24, x+size*5, y-size*25);
    quad(x+size*7, y-size*25, x+size*7, y-size*24, x+size*8, y-size*24, x+size*8, y-size*25);
    fill(colors[4]);
    quad(x+size*8, y-size*25, x+size*8, y-size*24, x+size*9, y-size*24, x+size*9, y-size*25);
    fill(colors[7]);
    quad(x+size*9, y-size*25, x+size*9, y-size*24, x+size*10, y-size*24, x+size*10, y-size*25);
    //row 27
    quad(x-size*2, y-size*26, x-size*2, y-size*25, x-size, y-size*25, x-size, y-size*26);
    fill(colors[4]);
    quad(x-size, y-size*26, x-size, y-size*25, x+size, y-size*25, x+size, y-size*26);
    fill(colors[7]);
    quad(x+size, y-size*26, x+size, y-size*25, x+size*2, y-size*25, x+size*2, y-size*26);
    fill(colors[6]);
    quad(x+size*2, y-size*26, x+size*2, y-size*25, x+size*3, y-size*25, x+size*3, y-size*26);
    fill(colors[4]);
    quad(x+size*3, y-size*26, x+size*3, y-size*25, x+size*4, y-size*25, x+size*4, y-size*26);
    fill(colors[6]);
    quad(x+size*4, y-size*26, x+size*4, y-size*25, x+size*5, y-size*25, x+size*5, y-size*26);
    fill(colors[7]);
    quad(x+size*5, y-size*26, x+size*5, y-size*25, x+size*6, y-size*25, x+size*6, y-size*26);
    quad(x+size*10, y-size*26, x+size*10, y-size*25, x+size*11, y-size*25, x+size*11, y-size*26);
    //row 28
    fill(colors[6]);
    quad(x-size*5, y-size*27, x-size*5, y-size*26, x-size*4, y-size*26, x-size*4, y-size*27);
    fill(colors[7]);
    quad(x-size*4, y-size*27, x-size*4, y-size*26, x-size*2, y-size*26, x-size*2, y-size*27);
    quad(x+size, y-size*27, x+size, y-size*26, x+size*2, y-size*26, x+size*2, y-size*27);
    fill(colors[6]);
    quad(x+size*2, y-size*27, x+size*2, y-size*26, x+size*3, y-size*26, x+size*3, y-size*27);
    fill(colors[4]);
    quad(x+size*3, y-size*27, x+size*3, y-size*26, x+size*4, y-size*26, x+size*4, y-size*27);
    fill(colors[6]);
    quad(x+size*4, y-size*27, x+size*4, y-size*26, x+size*5, y-size*26, x+size*5, y-size*27);
    fill(colors[7]);
    quad(x+size*5, y-size*27, x+size*5, y-size*26, x+size*7, y-size*26, x+size*7, y-size*27);
    //row 29
    quad(x-size*5, y-size*28, x-size*5, y-size*27, x-size*4, y-size*27, x-size*4, y-size*28);
    fill(colors[6]);
    quad(x, y-size*28, x, y-size*27, x+size*2, y-size*27, x+size*2, y-size*28);
    fill(colors[7]);
    quad(x+size*2, y-size*28, x+size*2, y-size*27, x+size*3, y-size*27, x+size*3, y-size*28);
    fill(colors[4]);
    quad(x+size*3, y-size*28, x+size*3, y-size*27, x+size*4, y-size*27, x+size*4, y-size*28);
    fill(colors[6]);
    quad(x+size*4, y-size*28, x+size*4, y-size*27, x+size*5, y-size*27, x+size*5, y-size*28);
    fill(colors[7]);
    quad(x+size*6, y-size*28, x+size*6, y-size*27, x+size*8, y-size*27, x+size*8, y-size*28);
    //row 30
    quad(x-size*2, y-size*29, x-size*2, y-size*28, x, y-size*28, x, y-size*29);
    fill(colors[6]);
    quad(x, y-size*29, x, y-size*28, x+size, y-size*28, x+size, y-size*29);
    fill(colors[4]);
    quad(x+size*2, y-size*29, x+size*2, y-size*28, x+size*3, y-size*28, x+size*3, y-size*29);
    fill(colors[6]);
    quad(x+size*3, y-size*29, x+size*3, y-size*28, x+size*4, y-size*28, x+size*4, y-size*29);
    fill(colors[7]);
    quad(x+size*4, y-size*29, x+size*4, y-size*28, x+size*5, y-size*28, x+size*5, y-size*29);
    fill(colors[6]);
    quad(x+size*5, y-size*29, x+size*5, y-size*28, x+size*6, y-size*28, x+size*6, y-size*29);
    fill(colors[7]);
    quad(x+size*7, y-size*29, x+size*7, y-size*28, x+size*8, y-size*28, x+size*8, y-size*29);
    //row 31
    quad(x-size*2, y-size*30, x-size*2, y-size*29, x-size, y-size*29, x-size, y-size*30);
    fill(colors[6]);
    quad(x+size, y-size*30, x+size, y-size*29, x+size*2, y-size*29, x+size*2, y-size*30);
    fill(colors[7]);
    quad(x+size*2, y-size*30, x+size*2, y-size*29, x+size*3, y-size*29, x+size*3, y-size*30);
    fill(colors[6]);
    quad(x+size*5, y-size*30, x+size*5, y-size*29, x+size*6, y-size*29, x+size*6, y-size*30);
    quad(x+size*7, y-size*30, x+size*7, y-size*29, x+size*9, y-size*29, x+size*9, y-size*30);
    //row 32
    fill(colors[7]);
    quad(x+size, y-size*31, x+size, y-size*30, x+size*2, y-size*30, x+size*2, y-size*31);
    //row 33
    quad(x+size, y-size*32, x+size, y-size*31, x+size*2, y-size*31, x+size*2, y-size*32);
    //draws face if needed: 1 = happy, 2 = sad, 3 = grin
    if (face === 1){
        
    } else if (face === 2){
        fill(0, 0, 0);
        quad(x-size*0.5, y-size*5, x+size*1.25, y-size*5, x+size*1.25, y-size*6.75, x-size*0.5, y-size*6.75);
        quad(x+size*4.5, y-size*5, x+size*6.25, y-size*5, x+size*6.25, y-size*6.75, x+size*4.5, y-size*6.75);
        fill(255, 255, 255);
        ellipse(x, y-size*6.25, size-1, size-1);
        ellipse(x+size*5, y-size*6.25, size-1, size-1);
        fill(0, 0, 0);
        arc(x+size*3, y-size*4, size*5, size*5, 0, 180);
    } else if (face === 3){
        fill(0, 0, 0);
        quad(x-size*0.5, y-size*5, x+size*1.25, y-size*5, x+size*1.25, y-size*6.75, x-size*0.5, y-size*6.75);
        quad(x+size*4.5, y-size*5, x+size*6.25, y-size*5, x+size*6.25, y-size*6.75, x+size*4.5, y-size*6.75);
        fill(255, 255, 255);
        ellipse(x, y-size*6.25, size-1, size-1);
        ellipse(x+size*5, y-size*6.25, size-1, size-1);
        fill(0, 0, 0);
        arc(x+size*3, y-size*4, size*5, size*5, 0, 180);
    }
};
//variables used in gameOver
var playAgain = color(0, 255, 68);
var giveUp = color(222, 53, 53);
//gameOver screen
var gameOver = function(){
    screen = null;
    background(255, 255, 255);
    fill(0, 0, 0);
    textSize(72);
    text("Game Over", 10, 40, 390, 100);
    drawPineapple(6, 190, 300, 2);
    drawPineapple(2, 50, 50, 2);
    //draws buttons
    fill(playAgain);
    quad(0, 350, 0, 400, 200, 400, 200, 350);
    textSize(20);
    fill(0, 0, 0);
    text("Play Again", 50, 370, 180, 50);
    fill(giveUp);
    quad(200, 350, 200, 400, 400, 400, 400, 350);
    textSize(20);
    fill(0, 0, 0);
    text("Give Up", 265, 370, 180, 50);
    if (mouseX >= 0 && mouseX < 200 && mouseY >= 350 && mouseY <= 400){
        fill(0, 191, 3);
        quad(0, 350, 0, 400, 200, 400, 200, 350);
        textSize(20);
        fill(0, 0, 0);
        text("Play Again", 50, 370, 180, 50);
        if (mousePressed){
            screen = 0;
        }
    } else if (mouseX > 200 && mouseX <= 400 && mouseY >= 350 && mouseY <= 400){
        fill(184, 35, 35);
        quad(200, 350, 200, 400, 400, 400, 400, 350);
        textSize(20);
        fill(0, 0, 0);
        text("Give Up", 265, 370, 180, 50);
    }
};

//variables used in screen 0
var x0 = 0;
var x1 = 100;
var x2 = 200;
var x3 = 300;
var mouseColor = get(mouseX, mouseY);
//screen 0
var screen0 = function(){
    background(255, 255, 255);
    textSize(24);
    text("The Impossible Pineapple Challenge", 0, 150, 400, 100);
    textSize(15);
    text("You have been summoned here by the Pineapples. To be free again you must pass all of these pineapple challenges. Warning: It may be impossible.", 10, 200, 390, 100);
    text("Best of luck: The Pineapples", 10, 260, 390, 100);
    drawPineapple(2, x0, 400);
    drawPineapple(2, x0, 75);
    if (x0 === 400){
        x0 = 0;
    } else {
        x0 += 2;
    }
    drawPineapple(2, x1, 400);
    drawPineapple(2, x1, 75);
    if (x1 === 400){
        x1 = 0;
    } else {
        x1 += 2;
    }
    drawPineapple(2, x2, 400);
    drawPineapple(2, x2, 75);
    if (x2 === 400) {
        x2 = 0;
    } else {
        x2 += 2;
    }
    drawPineapple(2, x3, 400);
    drawPineapple(2, x3, 75);
    if (x3 === 400){
        x3 = 0; 
    } else {
        x3 += 2;
    }
    //  var mouseColor = get(mouseX, mouseY);  
    if (mousePressed){
        mouseColor = get(mouseX, mouseY);
        for (var x = 0; x < colors.length; x++){
            if (mouseColor === colors[x]){
                screen = 1;
            }
        }
    }
};
//variables used in screen 1
var startText = 200;
var pineapple = 0;
var pineapple2 = 100;
//screen 1
var screen1 = function(){
    background(255, 255, 255);
    textSize(70);
    text("QUICK! Catch Little Billy Bob Joe the Pineapple!", startText, 200, 2000, 70);
    startText -= 10;
    if (startText < -2000){
        drawPineapple(3, pineapple, pineapple2); 
        pineapple += 20;
        if (pineapple === 400){
            pineapple = 0;
            if (pineapple2 === 100){
                pineapple2 = 200;
            } else if (pineapple2 === 200){
                pineapple2 = 300;
            } else if (pineapple2 === 300){
                pineapple2 = 400;
            } else{
                gameOver();
            }
        }
    }
    if (mousePressed){
        mouseColor = get(mouseX, mouseY);
        for (var x = 0; x < colors.length; x++){
            if (mouseColor === colors[x]){
                screen = 2;
            }
        }
    }
};
//variables used in screen 2
var x2;
var y2;
//screen 2
var screen2 = function(){
    background(255, 255, 255);
    x2 = random(0, 400);
    y2 = random(0, 400);
    drawPineapple(2, x2, y2);
    fill(0, 0, 0);
    textSize(27);
    text("Catch Little Billy Bob Joe Again!", 10, 20, 400, 400);
    if (mousePressed){
        mouseColor = get(mouseX, mouseY);
        for (var x = 0; x < colors.length; x++){
            if (mouseColor === colors[x]){
                screen = 3;
            }
        }
    }
};
//variables used in screen 3
var timer = 500;
var red3 = 0;
var green3 = 255;
//screen 3
var screen3 = function(){
    background(255, 255, 255);
    textSize(23);
    noStroke();
    text("Quick! Pineapple trivia! How long does it take a pineapple to mature?", 10, 20, 390, 400);
    timer -= 2;
    if (timer <= 400){
        if (mouseX >= 10 && mouseX <= 210 && mouseY >= 140 && mouseY <= 180){
            fill(200, 200, 200);
            rect(10, 140, 200, 40);
        } else if (mouseX >= 210 && mouseX <= 400 && mouseY >= 140 && mouseY <= 180){
            fill(200, 200, 200);
            rect(200, 140, 200, 40);
        } else if (mouseX >= 10 && mouseX <= 210 && mouseY >= 180 && mouseY <= 220){
            fill(200, 200, 200);
            rect(10, 180, 200, 40);
        } else if (mouseX >= 210 && mouseX <= 400 && mouseY >= 180 && mouseY <= 220){
            fill(200, 200, 200);
            rect(200, 180, 200, 40);
        }
        fill(0, 0, 0);
        text("A: 3 months", 10, 150, 200, 200);
        text("B: 6 months", 210, 150, 200, 200);
        text("C: 2 years", 10, 190, 200, 200);
        text("D: 3 years", 210, 190, 200, 200);
        if (mousePressed && mouseX >= 210 && mouseX <= 400 && mouseY >= 180 && mouseY <= 220){
            screen = 4;
        } else if (mousePressed && mouseX >= 10 && mouseX <= 210 && mouseY >= 140 && mouseY <= 180){
            gameOver();
        } else if (mousePressed && mouseX >= 210 && mouseX <=400 && mouseY >= 140 && mouseY <= 180){
            gameOver();
        } else if (mousePressed && mouseX >= 10 && mouseX <= 210 && mouseY >= 180 && mouseY <= 220){
            gameOver();
        }
        fill(red3, green3, 0);
        if (red3 < 255){
            red3 += 2;
        } else {
            green3 -= 2;
        }
        rect(0, 350, timer, 20);
        if (timer <= 0){
            gameOver();
        }
    }
};
//variables used in screen4
var clue = function(){
    if (mouseX >= 245 && mouseX <= 265 && mouseY >= 10 && mouseY <= 30){
        textSize(35);
        background(247, 237, 190);
        text("To the finder of the clue: ", 10, 40, 380, 340);
        textSize(20);
        text("First go the direction that a firery star travels each morning. Then go the direction opposite of fire and heat.", 10, 100, 380, 340);
    }
};
var mazeColor = color(6, 87, 36);
var drawMaze = function(){
    fill(34, 255, 0);
    quad(245, 10, 265, 10, 265, 30, 245, 30);
    background(mazeColor);
    fill(255, 255, 255);
    rect(170, 300, 70, 100);
    rect(230, 300, 75, 10);
    rect(300, 300, 10, 65);
    rect(300, 365, 60, 10);
    rect(360, 200, 10, 175);
    rect(360, 200, 40, 10);
    rect(280, 120, 120, 10);
    rect(280, 0, 10, 120);
    rect(220, 0, 10, 200);
    rect(220, 200, 75, 10);
    clue();
};
var start = false;
//screen 4
var screen4 = function(){
    if (start === false){
        background(255, 255, 255);
        textSize(19.9);
        text("Place your cursor on the pineapple to start!", 10, 20, 380, 380);
        drawPineapple(1.5, 200, 380);
        mouseColor = get(mouseX, mouseY);
        for (var x = 0; x < colors.length; x++){
            if (mouseColor === colors[x]){
                start = true;
            }
        }
    } else{
        background(255, 255, 255);
        drawPineapple(1.5, mouseX - 5, mouseY + 20);
        drawMaze();
        mouseColor = get(mouseX, mouseY);
        if (mouseColor === mazeColor){
            gameOver();
        }
    }
};
//screen 5
var screen5 = function(){

};

//draw function bringing all the screens together
var draw = function() {
    if (screen === 0){
        screen0();
    } else if (screen === 1){
        screen1();
    } else if (screen === 2){
        screen2();
    } else if (screen === 3){
        screen3();
    } else if (screen === 4){
        screen4();
    } else if (screen === 5){
        screen5();
    } else if (screen === 6){
        
    } else if (screen === 7){
        
    } else if (screen === 8){
        
    } else{
        gameOver();
    }
    if (screen !== 0 && screen !== null){
        textSize(15);
        fill(0, 0, 0);
        text(("Level " + screen), 340, 380, 100, 20);
    }
};
