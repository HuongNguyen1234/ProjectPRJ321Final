let Util = (function () {

    function map(n, start1, stop1, start2, stop2) {
        return ((n - start1) / (stop1 - start1)) * (stop2 - start2) + start2;
    }

    function toRadians(deg) {
        return deg * (Math.PI / 180);
    }

    function filterTime(t) {
        return String("00" + t).slice(-2);
    }

    return {
        map,
        toRadians,
        filterTime
    };
})();

function Circle(ctx, x, y, r, angle, lineWidth, color) {
    this.ctx = ctx;
    this.x = x;
    this.y = y;
    this.r = r;
    this.angle = angle;
    this.lineWidth = lineWidth;
    this.color = color;
}

Circle.prototype.draw = function () {
    this.ctx.shadowColor = 'black';
    this.ctx.shadowBlur = 10;
    this.ctx.lineCap = 'round';
    this.ctx.beginPath();
    this.ctx.strokeStyle = this.color;
    this.ctx.lineWidth = this.lineWidth;
    this.ctx.arc(this.x, this.y, this.r, -Math.PI / 2, this.angle);
    this.ctx.stroke();
};

Circle.prototype.update = function (a) {
    this.angle = a;
};

Circle.prototype.setCenter = function (val1, val2) {
    this.x = val1;
    this.y = val2;
};


let Clock = (function () {

    let h, m, s, ms;

    let canvasClock, ctx;
    let width, height;

    let hCircle, mCircle, sCircle, hhCircle, mmCircle, ssCircle, space1, space2, spaceCircle;


    function init(options) {

        canvasClock = document.getElementById(options.canvasClock);
        canvasClock.width = options.w;
        canvasClock.height = options.h;

        width = canvasClock.width;
        height = canvasClock.height;

        ctx = canvasClock.getContext('2d');

        window.addEventListener('resize', () => {
            canvasClock.width = window.innerWidth;
            canvasClock.height = window.innerHeight;

            width = canvasClock.width;
            height = canvasClock.height;

            hhCircle.setCenter(width / 2, height / 2);
            hCircle.setCenter(width / 2, height / 2);

            mmCircle.setCenter(width / 2, height / 2);
            mCircle.setCenter(width / 2, height / 2);

            ssCircle.setCenter(width / 2, height / 2);
            sCircle.setCenter(width / 2, height / 2);

            space1.setCenter(width / 2, height / 2);
            space2.setCenter(width / 2, height / 2);
            spaceCircle.setCenter(width / 2, height / 2);
        });

        hhCircle = new Circle(ctx, width / 2, height / 2, 220, Util.toRadians(360) - Math.PI / 2, 20, 'rgba(180, 180, 180, 0.6)');
        hCircle = new Circle(ctx, width / 2, height / 2, 220, 0, 20, 'rgba(240,94,35, 1)');

        mmCircle = new Circle(ctx, width / 2, height / 2, 180, Util.toRadians(360) - Math.PI / 2, 20, 'rgba(180, 180, 180, 0.6)');
        mCircle = new Circle(ctx, width / 2, height / 2, 180, 0, 20, 'rgb(255,191,0)');

        ssCircle = new Circle(ctx, width / 2, height / 2, 140, Util.toRadians(360) - Math.PI / 2, 20, 'rgba(180, 180, 180, 0.6)');
        sCircle = new Circle(ctx, width / 2, height / 2, 140, 0, 20, 'rgb(247,152,98)');

        space1 = new Circle(ctx, width / 2, height / 2, 200, Util.toRadians(360) - Math.PI / 2, 20, 'rgba(179, 103, 43, 0.6)');
        space2 = new Circle(ctx, width / 2, height / 2, 160, Util.toRadians(360) - Math.PI / 2, 20, 'rgba(179, 103, 43, 0.6)');

        spaceCircle = new Circle(ctx, width / 2, height / 2, 0, Util.toRadians(360), 280, 'rgba(179, 103, 43, 0.6)');

        mainLoop();

    }

    function mainLoop() {
        requestAnimationFrame(mainLoop);

        ctx.clearRect(0, 0, width, height);

        draw();
        update();
    }

    function draw() {
        space1.draw();
        space2.draw();
        spaceCircle.draw();

        hhCircle.draw();
        hCircle.draw();

        mmCircle.draw();
        mCircle.draw();

        ssCircle.draw();
        sCircle.draw();

        ctx.font = '55px Arial';
        ctx.fillStyle = 'white';
        ctx.textAlign = 'center';
        ctx.textBaseline = 'middle';
        ctx.fillText((h + ":" + m + ":" + s), width / 2, height / 2);
    }



    function update() {

        let d = new Date();
        h = d.getHours();
        m = d.getMinutes();
        s = d.getSeconds();
        ms = d.getMilliseconds();

        hCircle.update(Util.toRadians(Util.map((h % 12) + m / 60, 0, 12, 0, 360)) - Math.PI / 2);
        mCircle.update(Util.toRadians(Util.map(m + s / 60, 0, 60, 0, 360)) - Math.PI / 2);
        sCircle.update(Util.toRadians(Util.map(s + ms / 1000, 0, 60, 0, 360)) - Math.PI / 2);

    }

    return {
        init
    };

})();

Clock.init({
    canvasClock: 'canvasClock',
    w: window.innerWidth,
    h: window.innerHeight
});

function topFunction() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
}

