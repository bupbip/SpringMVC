<#import "parts/common.ftlh" as c>
<@c.page>
    <h4>Монетка</h4>
    <h6>Суть игры:</h6>
    <div>Выбери, какой стороной упадёт монетка и поставь свои деньги.</div>
    <div>В результате удвой их или проиграй всё.</div>

    <body>
    <style>
        h1 {
            text-align: center;
        }
        #coin {
            position: relative;
            margin: 0 auto;
            width: 100px;
            height: 100px;
            cursor: pointer;
            transition: transform 1s ease-in;
            transform-style: preserve-3d;
        }
        .side {
            width: 100%;
            height: 100%;
            border-radius: 100%;
            border: 4px dashed gold;
            position: absolute;
            backface-visibility: hidden;
        }
        .head {
            background-color: red;
            z-index: 10;
        }
        .tail {
            background-color: black;
            transform: rotateX(-180deg);
        }

        .flipHead {
            animation: resultHead 2s ease-out forwards;
        }
        .flipTail {
            animation: resultTail 2s ease-out forwards;
        }

        @keyframes resultHead {
            from {
                transform: rotateX(0);
            }
            to {
                transform: rotateX(1800deg);
            }
        }

        @keyframes resultTail {
            from {
                transform: rotateX(0);
            }
            to {
                transform: rotateX(1980deg);
            }
        }
    </style>

    <div id="coin">
        <div class="side head"></div>
        <div class="side tail"></div>
    </div>
    <script>
        let coin = document.getElementById("coin");

        coin.addEventListener("click", fnClick);

        function fnClick() {
            var flipResult = Math.random();
            var result;
            if (flipResult < 0.5) {
                coin.className = "flipHead";
                result = "red";
            } else {
                coin.className = "flipTail";
                result = "black";
            }
        }
    </script>
    </body>

</@c.page>
