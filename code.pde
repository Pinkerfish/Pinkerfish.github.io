void setup() {
    size(400, 400);
    frameRate(30);
    background(0, 0, 0);
}

//function that draws a pineapple, requires parameters size, which is the size of a pineapple pixel, x, which is the x location of the bottom left pixel, and y, which is the y location of the bottom left pixel
var drawPineapple = function(size, x, y){
    var YELLOW = color(255, 255, 0);
    var ORANGE = color(255, 200, 0);
    var LIGHTORANGE = color(255, 220, 90);
    var GREEN1 = color(170, 235, 91);
    var GREEN2 = color(85, 227, 77);
    var GREEN3 = color(45, 191, 32);
    var GREEN4 = color(34, 156, 23);
    var GREEN5 = color(18, 115, 9);
    noStroke();
    //row 1
    fill(ORANGE);
    quad(x, y, x, y+size, x+size, y+size, x+size, y);
    fill(YELLOW);
    quad(x+size, y, x+size, y+size, x+size*2, y+size, x+size*2, y);
    fill(ORANGE);
    quad(x+size*2, y, x+size*2, y+size, x+size*4, y+size, x+size*4, y);
    fill(YELLOW);
    quad(x+size*4, y, x+size*4, y+size, x+size*5, y+size, x+size*5, y);
    fill(ORANGE);
    quad(x+size*5, y, x+size*5, y+size, x+size*6, y+size, x+size*6, y);
    //row 2
    fill(YELLOW);
    quad(x-size, y-size, x-size, y, x+size*7, y, x+size*7, y-size);
    //row 3
    quad(x-size*2, y-size*2, x-size*2, y-size, x+size, y-size, x+size, y-size*2);
    fill(ORANGE);
    quad(x+size, y-size*2, x+size, y-size, x+size*3, y-size, x+size*3, y-size*2);
    fill(YELLOW);
    quad(x+size*3, y-size*2, x+size*3, y-size, x+size*6, y-size, x+size*6, y-size*2);
    fill(LIGHTORANGE);
    quad(x+size*6, y-size*2, x+size*6, y-size, x+size*8, y-size, x+size*8, y-size*2);
    //row 4
    fill(YELLOW);
    quad(x-size*3, y-size*3, x-size*3, y-size*2, x-size, y-size*2, x-size, y-size*3);
    fill(LIGHTORANGE);
    quad(x-size, y-size*3, x-size, y-size*2, x, y-size*2, x, y-size*3);
    fill(YELLOW);
    quad(x, y-size*3, x, y-size*2, x+size, y-size*2, x+size, y-size*3);
    fill(LIGHTORANGE);
    quad(x+size, y-size*3, x+size, y-size*2, x+size*2, y-size*2, x+size*2, y-size*3);
    fill(YELLOW);
    quad(x+size*2, y-size*3, x+size*2, y-size*2, x+size*4, y-size*2, x+size*4, y-size*3);
    fill(ORANGE);
    quad(x+size*4, y-size*3, x+size*4, y-size*2, x+size*5, y-size*2, x+size*5, y-size*3);
    fill(YELLOW);
    quad(x+size*5, y-size*3, x+size*5, y-size*2, x+size*6, y-size*2, x+size*6, y-size*3);
    fill(ORANGE);
    quad(x+size*6, y-size*3, x+size*6, y-size*2, x+size*7, y-size*2, x+size*7, y-size*3);
    fill(YELLOW);
    quad(x+size*7, y-size*3, x+size*7, y-size*2, x+size*9, y-size*2, x+size*9, y-size*3);
    //row 5
    quad(x-size*3, y-size*4, x-size*3, y-size*3, x-size, y-size*3, x-size, y-size*4);
    fill(LIGHTORANGE);
    quad(x-size, y-size*4, x-size, y-size*3, x, y-size*3, x, y-size*4);
    fill(ORANGE);
    quad(x, y-size*4, x, y-size*3, x+size, y-size*3, x+size, y-size*4);
    fill(LIGHTORANGE);
    quad(x+size, y-size*4, x+size, y-size*3, x+size*2, y-size*3, x+size*2, y-size*4);
    fill(YELLOW);
    quad(x+size*2, y-size*4, x+size*2, y-size*3, x+size*4, y-size*3, x+size*4, y-size*4);
    fill(LIGHTORANGE);
    quad(x+size*4, y-size*4, x+size*4, y-size*3, x+size*6, y-size*3, x+size*6, y-size*4);
    fill(ORANGE);
    quad(x+size*6, y-size*4, x+size*6, y-size*3, x+size*7, y-size*3, x+size*7, y-size*4);
    fill(YELLOW);
    quad(x+size*7, y-size*4, x+size*7, y-size*3, x+size*9, y-size*3, x+size*9, y-size*4);
    //row 6
    quad(x-size*3, y-size*5, x-size*3, y-size*4, x+size*9, y-size*4, x+size*9, y-size*5);
    //row 7
    fill(LIGHTORANGE);
    quad(x-size*3, y-size*6, x-size*3, y-size*5, x-size*2, y-size*5, x-size*2, y-size*6);
    fill(GREEN1);
    quad(x-size*2, y-size*6, x-size*2, y-size*5, x-size*1, y-size*5, x-size*1, y-size*6);
    fill(YELLOW);
    quad(x-size*1, y-size*6, x-size*1, y-size*5, x+size*2, y-size*5, x+size*2, y-size*6);
    fill(LIGHTORANGE);
    quad(x+size*2, y-size*6, x+size*2, y-size*5, x+size*4, y-size*5, x+size*4, y-size*6);
    fill(YELLOW);
    quad(x+size*4, y-size*6, x+size*4, y-size*5, x+size*7, y-size*5, x+size*7, y-size*6);
    fill(LIGHTORANGE);
    quad(x+size*7, y-size*6, x+size*7, y-size*5, x+size*8, y-size*5, x+size*8, y-size*6);
    fill(GREEN1);
    quad(x+size*8, y-size*6, x+size*8, y-size*5, x+size*9, y-size*5, x+size*9, y-size*6);
    //row 8
    quad(x-size*3, y-size*7, x-size*3, y-size*6, x-size*2, y-size*6, x-size*2, y-size*7);
    fill(YELLOW);
    quad(x-size*2, y-size*7, x-size*2, y-size*6, x, y-size*6, x, y-size*7);
    fill(GREEN1);
    quad(x, y-size*7, x, y-size*6, x+size, y-size*6, x+size, y-size*7);
    fill(YELLOW);
    quad(x+size, y-size*7, x+size, y-size*6, x+size*2, y-size*6, x+size*2, y-size*7);
    fill(GREEN1);
    quad(x+size*2, y-size*7, x+size*2, y-size*6, x+size*3, y-size*6, x+size*3, y-size*7);
    fill(YELLOW);
    quad(x+size*3, y-size*7, x+size*3, y-size*6, x+size*5, y-size*6, x+size*5, y-size*7);
    fill(GREEN1);
    quad(x+size*5, y-size*7, x+size*5, y-size*6, x+size*6, y-size*6, x+size*6, y-size*7);
    fill(YELLOW);
    quad(x+size*6, y-size*7, x+size*6, y-size*6, x+size*7, y-size*6, x+size*7, y-size*7);
    fill(LIGHTORANGE);
    quad(x+size*7, y-size*7, x+size*7, y-size*6, x+size*8, y-size*6, x+size*8, y-size*7);
    fill(YELLOW);
    quad(x+size*8, y-size*7, x+size*8, y-size*6, x+size*9, y-size*6, x+size*9, y-size*7);
    //row 9
    fill(GREEN2);
    quad(x-size*3, y-size*8, x-size*3, y-size*7, x-size*2, y-size*7, x-size*2, y-size*8);
    fill(YELLOW);
    quad(x-size*2, y-size*8, x-size*2, y-size*7, x, y-size*7, x, y-size*8);
    fill(GREEN1);
    quad(x, y-size*8, x, y-size*7, x+size, y-size*7, x+size, y-size*8);
    fill(GREEN2);
    quad(x+size, y-size*8, x+size, y-size*7, x+size*3, y-size*7, x+size*3, y-size*8);
    fill(YELLOW);
    quad(x+size*3, y-size*8, x+size*3, y-size*7, x+size*5, y-size*7, x+size*5, y-size*8);
    fill(GREEN2);
    quad(x+size*5, y-size*8, x+size*5, y-size*7, x+size*7, y-size*7, x+size*7, y-size*8);
    fill(GREEN1);
    quad(x+size*7, y-size*8, x+size*7, y-size*7, x+size*8, y-size*7, x+size*8, y-size*8);
    fill(YELLOW);
    quad(x+size*8, y-size*8, x+size*8, y-size*7, x+size*9, y-size*7, x+size*9, y-size*8);
    //row 10
    quad(x-size*3, y-size*9, x-size*3, y-size*8, x+size*9, y-size*8, x+size*9, y-size*9);
    //row 11
    quad(x-size*3, y-size*10, x-size*3, y-size*9, x-size*2, y-size*9, x-size*2, y-size*10);
    fill(GREEN2);
    quad(x-size*2, y-size*10, x-size*2, y-size*9, x, y-size*9, x, y-size*10);
    fill(YELLOW);
    quad(x, y-size*10, x, y-size*9, x+size*3, y-size*9, x+size*3, y-size*10);
    fill(GREEN1);
    quad(x+size*3, y-size*10, x+size*3, y-size*9, x+size*4, y-size*9, x+size*4, y-size*10);
    fill(GREEN2);
    quad(x+size*4, y-size*10, x+size*4, y-size*9, x+size*5, y-size*9, x+size*5, y-size*10);
    fill(YELLOW);
    quad(x+size*5, y-size*10, x+size*5, y-size*9, x+size*8, y-size*9, x+size*8, y-size*10);
    fill(GREEN2);
    quad(x+size*8, y-size*10, x+size*8, y-size*9, x+size*9, y-size*9, x+size*9, y-size*10);
    //row 12
    fill(YELLOW);
    quad(x-size*3, y-size*11, x-size*3, y-size*10, x-size*2, y-size*10, x-size*2, y-size*11);
    fill(GREEN2);
    quad(x-size*2, y-size*11, x-size*2, y-size*10, x-size*1, y-size*10, x-size*1, y-size*11);
    fill(YELLOW);
    quad(x-size*1, y-size*11, x-size*1, y-size*10, x+size, y-size*10, x+size, y-size*11);
    fill(GREEN1);
    quad(x+size, y-size*11, x+size, y-size*10, x+size*2, y-size*10, x+size*2, y-size*11);
    fill(YELLOW);
    quad(x+size*2, y-size*11, x+size*2, y-size*10, x+size*3, y-size*10, x+size*3, y-size*11);
    fill(GREEN2);
    quad(x+size*3, y-size*11, x+size*3, y-size*10, x+size*4, y-size*10, x+size*4, y-size*11);
    fill(YELLOW);
    quad(x+size*4, y-size*11, x+size*4, y-size*10, x+size*6, y-size*10, x+size*6, y-size*11);
    fill(GREEN2);
    quad(x+size*6, y-size*11, x+size*6, y-size*10, x+size*7, y-size*10, x+size*7, y-size*11);
    fill(YELLOW);
    quad(x+size*7, y-size*11, x+size*7, y-size*10, x+size*8, y-size*10, x+size*8, y-size*11);
    fill(GREEN2);
    quad(x+size*8, y-size*11, x+size*8, y-size*10, x+size*9, y-size*10, x+size*9, y-size*11);
    //row 13
    fill(GREEN1);
    quad(x-size*3, y-size*12, x-size*3, y-size*11, x-size*2, y-size*11, x-size*2, y-size*12);
    fill(GREEN2);
    quad(x-size*2, y-size*12, x-size*2, y-size*11, x-size, y-size*11, x-size, y-size*12);
    fill(YELLOW);
    quad(x-size, y-size*12, x-size, y-size*11, x+size, y-size*11, x+size, y-size*12);
    fill(GREEN2);
    quad(x+size, y-size*12, x+size, y-size*11, x+size*4, y-size*11, x+size*4, y-size*12);
    fill(YELLOW);
    quad(x+size*4, y-size*12, x+size*4, y-size*11, x+size*6, y-size*11, x+size*6, y-size*12);
    fill(GREEN2);
    quad(x+size*6, y-size*12, x+size*6, y-size*11, x+size*8, y-size*11, x+size*8, y-size*12);
    fill(GREEN1);
    quad(x+size*8, y-size*12, x+size*8, y-size*11, x+size*9, y-size*11, x+size*9, y-size*12);
    //row 14
    fill(YELLOW);
    quad(x-size*2, y-size*13, x-size*2, y-size*12, x+size*8, y-size*12, x+size*8, y-size*13);
    //row 15
    quad(x-size*2, y-size*14, x-size*2, y-size*13, x-size, y-size*13, x-size, y-size*14);
    fill(GREEN3);
    quad(x-size, y-size*14, x-size, y-size*13, x, y-size*13, x, y-size*14);
    fill(GREEN4);
    quad(x, y-size*14, x, y-size*13, x+size, y-size*13, x+size, y-size*14);
    fill(YELLOW);
    quad(x+size, y-size*14, x+size, y-size*13, x+size*4, y-size*13, x+size*4, y-size*14);
    fill(GREEN4);
    quad(x+size*4, y-size*14, x+size*4, y-size*13, x+size*6, y-size*13, x+size*6, y-size*14);
    fill(YELLOW);
    quad(x+size*6, y-size*14, x+size*6, y-size*13, x+size*8, y-size*13, x+size*8, y-size*14);
    //row 16
    fill(GREEN4);
    quad(x-size, y-size*15, x-size, y-size*14, x, y-size*14, x, y-size*15);
    fill(YELLOW);
    quad(x, y-size*15, x, y-size*14, x+size*2, y-size*14, x+size*2, y-size*15);
    fill(GREEN4);
    quad(x+size*2, y-size*15, x+size*2, y-size*14, x+size*3, y-size*14, x+size*3, y-size*15);
    fill(YELLOW);
    quad(x+size*3, y-size*15, x+size*3, y-size*14, x+size*4, y-size*14, x+size*4, y-size*15);
    fill(GREEN4);
    quad(x+size*4, y-size*15, x+size*4, y-size*14, x+size*5, y-size*14, x+size*5, y-size*15);
    fill(YELLOW);
    quad(x+size*5, y-size*15, x+size*5, y-size*14, x+size*7, y-size*14, x+size*7, y-size*15);
    //row 17
    fill(GREEN4);
    quad(x, y-size*16, x, y-size*15, x+size, y-size*15, x+size, y-size*16);
    fill(YELLOW);
    quad(x+size, y-size*16, x+size, y-size*15, x+size*2, y-size*15, x+size*2, y-size*16);
    fill(GREEN3);
    quad(x+size*2, y-size*16, x+size*2, y-size*15, x+size*4, y-size*15, x+size*4, y-size*16);
    fill(GREEN4);
    quad(x+size*4, y-size*16, x+size*4, y-size*15, x+size*5, y-size*15, x+size*5, y-size*16);
    fill(GREEN5);
    quad(x+size*5, y-size*16, x+size*5, y-size*15, x+size*6, y-size*15, x+size*6, y-size*16);
    //row 18
    fill(GREEN4);
    quad(x, y-size*17, x, y-size*16, x+size, y-size*16, x+size, y-size*17);
    fill(GREEN5);
    quad(x+size, y-size*17, x+size, y-size*16, x+size*2, y-size*16, x+size*2, y-size*17);
    fill(GREEN4);
    quad(x+size*2, y-size*17, x+size*2, y-size*16, x+size*3, y-size*16, x+size*3, y-size*17);
    fill(GREEN2);
    quad(x+size*3, y-size*17, x+size*3, y-size*16, x+size*4, y-size*16, x+size*4, y-size*17);
    fill(GREEN4);
    quad(x+size*4, y-size*17, x+size*4, y-size*16, x+size*5, y-size*16, x+size*5, y-size*17);
    fill(GREEN5);
    quad(x+size*5, y-size*17, x+size*5, y-size*16, x+size*6, y-size*16, x+size*6, y-size*17);
    fill(GREEN4);
    quad(x+size*7, y-size*17, x+size*7, y-size*16, x+size*8, y-size*16, x+size*8, y-size*17);
    //row 19
    quad(x-size*3, y-size*18, x-size*3, y-size*17, x-size*2, y-size*17, x-size*2, y-size*18);
    fill(GREEN5);
    quad(x, y-size*18, x, y-size*17, x+size*3, y-size*17, x+size*3, y-size*18);
    fill(GREEN4);
    quad(x+size*3, y-size*18, x+size*3, y-size*17, x+size*4, y-size*17, x+size*4, y-size*18);
    fill(GREEN2);
    quad(x+size*4, y-size*18, x+size*4, y-size*17, x+size*5, y-size*17, x+size*5, y-size*18);
    fill(GREEN5);
    quad(x+size*5, y-size*18, x+size*5, y-size*17, x+size*7, y-size*17, x+size*7, y-size*18);
    //row 20
    quad(x-size*2, y-size*19, x-size*2, y-size*18, x, y-size*18, x, y-size*19);
    fill(GREEN4);
    quad(x, y-size*19, x, y-size*18, x+size*2, y-size*18, x+size*2, y-size*19);
    fill(GREEN5);
    quad(x+size*2, y-size*19, x+size*2, y-size*18, x+size*3, y-size*18, x+size*3, y-size*19);
    fill(GREEN4);
    quad(x+size*3, y-size*19, x+size*3, y-size*18, x+size*4, y-size*18, x+size*4, y-size*19);
    fill(GREEN2);
    quad(x+size*4, y-size*19, x+size*4, y-size*18, x+size*5, y-size*18, x+size*5, y-size*19);
    fill(GREEN5);
    quad(x+size*5, y-size*19, x+size*5, y-size*18, x+size*6, y-size*18, x+size*6, y-size*19);
    //row 21
    quad(x, y-size*20, x, y-size*19, x+size, y-size*19, x+size, y-size*20);
    fill(GREEN2);
    quad(x+size, y-size*20, x+size, y-size*19, x+size*2, y-size*19, x+size*2, y-size*20);
    fill(GREEN5);
    quad(x+size*2, y-size*20, x+size*2, y-size*19, x+size*3, y-size*19, x+size*3, y-size*20);
    fill(GREEN4);
    quad(x+size*3, y-size*20, x+size*3, y-size*19, x+size*4, y-size*19, x+size*4, y-size*20);
    fill(GREEN2);
    quad(x+size*4, y-size*20, x+size*4, y-size*19, x+size*5, y-size*19, x+size*5, y-size*20);
    fill(GREEN5);
    quad(x+size*5, y-size*20, x+size*5, y-size*19, x+size*9, y-size*19, x+size*9, y-size*20);
    fill(GREEN4);
    quad(x+size*9, y-size*20, x+size*9, y-size*19, x+size*10, y-size*19, x+size*10, y-size*20);
    //row 22
    fill(GREEN2);
    quad(x-size, y-size*21, x-size, y-size*20, x+size*2, y-size*20, x+size*2, y-size*21);
    fill(GREEN5);
    quad(x+size*2, y-size*21, x+size*2, y-size*20, x+size*4, y-size*20, x+size*4, y-size*21);
    fill(GREEN4);
    quad(x+size*4, y-size*21, x+size*4, y-size*20, x+size*7, y-size*20, x+size*7, y-size*21);
    fill(GREEN5);
    quad(x+size*7, y-size*21, x+size*7, y-size*20, x+size*8, y-size*20, x+size*8, y-size*21);
    //row 23
    fill(GREEN4);
    quad(x-size*3, y-size*22, x-size*3, y-size*21, x-size*2, y-size*21, x-size*2, y-size*22);
    fill(GREEN5);
    quad(x-size*2, y-size*22, x-size*2, y-size*21, x-size, y-size*21, x-size, y-size*22);
    fill(GREEN4);
    quad(x+size, y-size*22, x+size, y-size*21, x+size*2, y-size*21, x+size*2, y-size*22);
    fill(GREEN5);
    quad(x+size*2, y-size*22, x+size*2, y-size*21, x+size*3, y-size*21, x+size*3, y-size*22);
    fill(GREEN4);
    quad(x+size*3, y-size*22, x+size*3, y-size*21, x+size*4, y-size*21, x+size*4, y-size*22);
    fill(GREEN5);
    quad(x+size*4, y-size*22, x+size*4, y-size*21, x+size*5, y-size*21, x+size*5, y-size*22);
    fill(GREEN4);
    quad(x+size*7, y-size*22, x+size*7, y-size*21, x+size*8, y-size*21, x+size*8, y-size*22);
    fill(GREEN5);
    quad(x+size*8, y-size*22, x+size*8, y-size*21, x+size*9, y-size*21, x+size*9, y-size*22);
    //row 24
    quad(x-size, y-size*23, x-size, y-size*22, x+size, y-size*22, x+size, y-size*23);
    fill(GREEN2);
    quad(x+size, y-size*23, x+size, y-size*22, x+size*2, y-size*22, x+size*2, y-size*23);
    fill(GREEN4);
    quad(x+size*2, y-size*23, x+size*2, y-size*22, x+size*3, y-size*22, x+size*3, y-size*23);
    fill(GREEN5);
    quad(x+size*3, y-size*23, x+size*3, y-size*22, x+size*4, y-size*22, x+size*4, y-size*23);
    fill(GREEN4);
    quad(x+size*4, y-size*23, x+size*4, y-size*22, x+size*5, y-size*22, x+size*5, y-size*23);
    fill(GREEN5);
    quad(x+size*5, y-size*23, x+size*5, y-size*22, x+size*6, y-size*22, x+size*6, y-size*23);
    //row 25
    fill(GREEN4);
    quad(x-size*6, y-size*24, x-size*6, y-size*23, x-size*5, y-size*23, x-size*5, y-size*24);
    fill(GREEN5);
    quad(x-size*3, y-size*24, x-size*3, y-size*23, x, y-size*23, x, y-size*24);
    fill(GREEN2);
    quad(x+size, y-size*24, x+size, y-size*23, x+size*2, y-size*23, x+size*2, y-size*24);
    fill(GREEN4);
    quad(x+size*2, y-size*24, x+size*2, y-size*23, x+size*3, y-size*23, x+size*3, y-size*24);
    fill(GREEN5);
    quad(x+size*3, y-size*24, x+size*3, y-size*23, x+size*4, y-size*23, x+size*4, y-size*24);
    fill(GREEN4);
    quad(x+size*4, y-size*24, x+size*4, y-size*23, x+size*5, y-size*23, x+size*5, y-size*24);
    fill(GREEN5);
    quad(x+size*5, y-size*24, x+size*5, y-size*23, x+size*7, y-size*23, x+size*7, y-size*24);
    fill(GREEN2);
    quad(x+size*7, y-size*24, x+size*7, y-size*23, x+size*8, y-size*23, x+size*8, y-size*24);
    //row 26
    fill(GREEN5);
    quad(x-size*5, y-size*25, x-size*5, y-size*24, x-size*2, y-size*24, x-size*2, y-size*25);
    fill(GREEN4);
    quad(x, y-size*25, x, y-size*24, x+size, y-size*24, x+size, y-size*25);
    fill(GREEN2);
    quad(x+size, y-size*25, x+size, y-size*24, x+size*2, y-size*24, x+size*2, y-size*25);
    fill(GREEN4);
    quad(x+size*2, y-size*25, x+size*2, y-size*24, x+size*3, y-size*24, x+size*3, y-size*25);
    fill(GREEN5);
    quad(x+size*3, y-size*25, x+size*3, y-size*24, x+size*4, y-size*24, x+size*4, y-size*25);
    fill(GREEN4);
    quad(x+size*4, y-size*25, x+size*4, y-size*24, x+size*5, y-size*24, x+size*5, y-size*25);
    quad(x+size*7, y-size*25, x+size*7, y-size*24, x+size*8, y-size*24, x+size*8, y-size*25);
    fill(GREEN2);
    quad(x+size*8, y-size*25, x+size*8, y-size*24, x+size*9, y-size*24, x+size*9, y-size*25);
    fill(GREEN5);
    quad(x+size*9, y-size*25, x+size*9, y-size*24, x+size*10, y-size*24, x+size*10, y-size*25);
    //row 27
    quad(x-size*2, y-size*26, x-size*2, y-size*25, x-size, y-size*25, x-size, y-size*26);
    fill(GREEN2);
    quad(x-size, y-size*26, x-size, y-size*25, x+size, y-size*25, x+size, y-size*26);
    fill(GREEN5);
    quad(x+size, y-size*26, x+size, y-size*25, x+size*2, y-size*25, x+size*2, y-size*26);
    fill(GREEN4);
    quad(x+size*2, y-size*26, x+size*2, y-size*25, x+size*3, y-size*25, x+size*3, y-size*26);
    fill(GREEN2);
    quad(x+size*3, y-size*26, x+size*3, y-size*25, x+size*4, y-size*25, x+size*4, y-size*26);
    fill(GREEN4);
    quad(x+size*4, y-size*26, x+size*4, y-size*25, x+size*5, y-size*25, x+size*5, y-size*26);
    fill(GREEN5);
    quad(x+size*5, y-size*26, x+size*5, y-size*25, x+size*6, y-size*25, x+size*6, y-size*26);
    quad(x+size*10, y-size*26, x+size*10, y-size*25, x+size*11, y-size*25, x+size*11, y-size*26);
    //row 28
    fill(GREEN4);
    quad(x-size*5, y-size*27, x-size*5, y-size*26, x-size*4, y-size*26, x-size*4, y-size*27);
    fill(GREEN5);
    quad(x-size*4, y-size*27, x-size*4, y-size*26, x-size*2, y-size*26, x-size*2, y-size*27);
    quad(x+size, y-size*27, x+size, y-size*26, x+size*2, y-size*26, x+size*2, y-size*27);
    fill(GREEN4);
    quad(x+size*2, y-size*27, x+size*2, y-size*26, x+size*3, y-size*26, x+size*3, y-size*27);
    fill(GREEN2);
    quad(x+size*3, y-size*27, x+size*3, y-size*26, x+size*4, y-size*26, x+size*4, y-size*27);
    fill(GREEN4);
    quad(x+size*4, y-size*27, x+size*4, y-size*26, x+size*5, y-size*26, x+size*5, y-size*27);
    fill(GREEN5);
    quad(x+size*5, y-size*27, x+size*5, y-size*26, x+size*7, y-size*26, x+size*7, y-size*27);
    //row 29
    quad(x-size*5, y-size*28, x-size*5, y-size*27, x-size*4, y-size*27, x-size*4, y-size*28);
    fill(GREEN4);
    quad(x, y-size*28, x, y-size*27, x+size*2, y-size*27, x+size*2, y-size*28);
    fill(GREEN5);
    quad(x+size*2, y-size*28, x+size*2, y-size*27, x+size*3, y-size*27, x+size*3, y-size*28);
    fill(GREEN2);
    quad(x+size*3, y-size*28, x+size*3, y-size*27, x+size*4, y-size*27, x+size*4, y-size*28);
    fill(GREEN4);
    quad(x+size*4, y-size*28, x+size*4, y-size*27, x+size*5, y-size*27, x+size*5, y-size*28);
    fill(GREEN5);
    quad(x+size*6, y-size*28, x+size*6, y-size*27, x+size*8, y-size*27, x+size*8, y-size*28);
    //row 30
    quad(x-size*2, y-size*29, x-size*2, y-size*28, x, y-size*28, x, y-size*29);
    fill(GREEN4);
    quad(x, y-size*29, x, y-size*28, x+size, y-size*28, x+size, y-size*29);
    fill(GREEN2);
    quad(x+size*2, y-size*29, x+size*2, y-size*28, x+size*3, y-size*28, x+size*3, y-size*29);
    fill(GREEN4);
    quad(x+size*3, y-size*29, x+size*3, y-size*28, x+size*4, y-size*28, x+size*4, y-size*29);
    fill(GREEN5);
    quad(x+size*4, y-size*29, x+size*4, y-size*28, x+size*5, y-size*28, x+size*5, y-size*29);
    fill(GREEN4);
    quad(x+size*5, y-size*29, x+size*5, y-size*28, x+size*6, y-size*28, x+size*6, y-size*29);
    fill(GREEN5);
    quad(x+size*7, y-size*29, x+size*7, y-size*28, x+size*8, y-size*28, x+size*8, y-size*29);
    //row 31
    quad(x-size*2, y-size*30, x-size*2, y-size*29, x-size, y-size*29, x-size, y-size*30);
    fill(GREEN4);
    quad(x+size, y-size*30, x+size, y-size*29, x+size*2, y-size*29, x+size*2, y-size*30);
    fill(GREEN5);
    quad(x+size*2, y-size*30, x+size*2, y-size*29, x+size*3, y-size*29, x+size*3, y-size*30);
    fill(GREEN4);
    quad(x+size*5, y-size*30, x+size*5, y-size*29, x+size*6, y-size*29, x+size*6, y-size*30);
    quad(x+size*7, y-size*30, x+size*7, y-size*29, x+size*9, y-size*29, x+size*9, y-size*30);
    //row 32
    fill(GREEN5);
    quad(x+size, y-size*31, x+size, y-size*30, x+size*2, y-size*30, x+size*2, y-size*31);
    //row 33
    quad(x+size, y-size*32, x+size, y-size*31, x+size*2, y-size*31, x+size*2, y-size*32);
};

var screen = 0;
var x0 = 0;

var draw = function() {
    if (screen === 0){
        background(255, 255, 255);
        drawPineapple(2, x0, 400);
        drawPineapple(2, x0, 75);
        if (x0 === 400){
            x0 = 0;
        } else {
            x0 += 2;
        }
    }
};