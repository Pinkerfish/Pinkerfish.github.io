void setup() {
    size(400, 400);
    frameRate(30);
    background(0, 0, 0);
}

var drawPineapple = function(size, x, y){
    image(getImage("http://s16.postimg.org/lp5mw822d/pineapple.png"), 100, 100, 40, 80);
};

drawPineapple(25, 200, 200);
drawPineapple(50, 100, 100);