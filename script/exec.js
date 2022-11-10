const { exec } = require('child_process');
var yourscript = exec('sh repo/mainscript/script.sh',
        (error, stdout, stderr) => {
            console.log(stdout);
            console.log(stderr);
            if (error !== null) {
                console.log(`exec error: ${error}`);
            }
        });

console.log(yourscript)