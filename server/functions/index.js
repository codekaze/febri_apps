const functions = require('firebase-functions');
const admin = require('firebase-admin');
var https = require('https');
var uuid = require('uuid');
require("./download");
var FormData = require('form-data');


var serviceAccount = require("./serviceAccountKey.json");
admin.initializeApp({
    credential: admin.credential.cert(serviceAccount)
});
const db = admin.firestore();

// ----

const express = require('express');
const cors = require('cors');
const app = express();
const port = 4021;

const axios = require('axios');
const fs = require("fs-extra");
const { text } = require('express');


//------------------------
const multer = require('multer');
var storage = multer.diskStorage(
    {
        destination: 'uploads/',
        filename: function (req, file, cb) {
            //req.body is empty...
            //How could I get the new_file_name property sent from client here?
            // cb(null, req.body.upload_id + "." + file.originalname.split(".")[1]);
            cb(null, file.originalname);
        }
    }
);
var upload = multer({ storage: storage });
//------------------------

app.use(cors());
app.use(express.json());

app.listen(port, () => {
    console.log(`Server running on port ${port}`);
});

app.get('/', (req, res, next) => {
    return res.status(200).json({
        "status": "OK"
    });
});

//------ UPLOAD FILE ----------------//
app.post('/file/upload', upload.single('photo'), function (req, res, next) {
    return res.json({
        "file": req.file,
        "upload_id": req.body.upload_id
    });
});


//------ UPLOAD FILE ----------------//
app.get('/cors-image', async function (req, res, next) {

    var response = await axios({
        method: "get",
        url: req.query.url,
        responseType: "stream"
    });

    let stream = response.data.pipe(fs.createWriteStream("./uploads/custom.png"));
    stream.on('finish', async function () {
        var img = fs.readFileSync('./uploads/custom.png');
        res.writeHead(200, { 'Content-Type': 'image/png' });
        res.end(img, 'binary');
    });


});


app.get('/file', async function (req, res, next) {
    var url = req.query.url;

    var data = new FormData();
    data.append('key', 'dacec227b94b613ba69c2a93f6509556');
    data.append('image', 'https://simgbb.com/images/logo.png');

    var config = {
        method: 'post',
        url: 'https://api.imgbb.com/1/upload',
        headers: {
            ...data.getHeaders()
        },
        data: data
    };

    axios(config)
        .then(function (response) {
            return res.json({
                "data": {
                    "source_url": url,
                    "image_url": response.data["data"]["display_url"]
                }
            });
        })
        .catch(function (error) {
            return res.json({
                "url": url,
                "error": error
            });
        });
})

// app.get('/file/:upload_id', upload.single('photo'), function (req, res, next) {
//     var filename = `${req.params.upload_id}.jpg`;
//     var content = fs.readFileSync(`./uploads/${filename}`, 'utf8');
//     return res.json({
//         "upload_id": req.params.upload_id,
//         "data": content,
//     });
// });
//----------------------------------//


var snapshot;
var templates = {};

async function loadSnapshot() {
    snapshot = await db.collection("users")
        .doc("5KcK7pbQzFhL1oRnvfMraxssBJw2")
        .collection("user_snippets")
        .onSnapshot(querySnapshot => {
            querySnapshot.docChanges().forEach(change => {
                if (change.type === 'added') {
                    console.log('New Data: ');

                    var item = change.doc.data();
                    item["id"] = change.doc.id;
                    templates[item["snippet_tag"]] = item;
                }
                if (change.type === 'modified') {
                    console.log('Modified Data: ');

                    var item = change.doc.data();
                    item["id"] = change.doc.id;
                    templates[item["snippet_tag"]] = item;
                }
                if (change.type === 'removed') {
                    console.log('Removed Data: ');

                    var item = change.doc.data();
                    item["id"] = change.doc.id;
                    delete templates[item["snippet_tag"]];
                }
            });
        });

}
loadSnapshot();

app.post('/template', async (req, res, next) => {
    var command = req.body["command"];
    var template = templates[command];

    return res.status(200).json({
        "status": "OK",
        // "template": `THIS TEMPLATE IS FROM NODEJS APP, your command is : ${req.body["command"]}`
        "template": typeof template == 'undefined' ? `UNDEFINED_TEMPLATE` : `${template["code"]}`,
    });
});

exports.api = functions.https.onRequest(app);