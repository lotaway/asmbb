const fs = require('fs');
const path = require('path');

function removeZoneIdentifierFiles(directory) {
    let count = 0;

    function traverse(dir) {
        try {
            const files = fs.readdirSync(dir);

            files.forEach(file => {
                const fullPath = path.join(dir, file);
                const stat = fs.statSync(fullPath);``

                if (stat.isDirectory()) {
                    traverse(fullPath);
                } else if (file.includes('Zone.Identifier')) {
                    try {
                        fs.unlinkSync(fullPath);
                        console.log(`${fullPath} already removed`);
                        count++;
                    } catch (err) {
                        console.error(`Delete ${fullPath} error: ${err.message}`);
                    }
                }
            });
        } catch (err) {
            console.error(`Read directory error ${dir}: ${err.message}`);
        }
    }

    console.log(`Scanning directory: ${directory}`);
    traverse(directory);
    console.log(`\nDone! Deleted ${count} files`);
}

const targetDir = process.argv[2] || process.cwd();
removeZoneIdentifierFiles(targetDir);