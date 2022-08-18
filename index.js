const express = require("express");
require("dotenv").config();
const path = require("path");
const hbs = require("hbs");
const mysql = require("mysql2");
const nodemailer = require("nodemailer");

const app = express();
const PORT = process.env.PORT || 8080;


// Conexion a la DB
// const conexion = mysql.createConnection({
//     host: process.env.HOST,
//     user: process.env.USER,
//     password: process.env.PASSWORD,
//     database: process.env.DATABASE
// })

// conexion.connect((err) => {
//     if (err) {
//         console.error(`Error en el la conexion: ${err.stack}`);
//         return;
//     }
//     console.log(`Conectado a la base de datos ${process.env.DATABASE}`);
// })

app.use(express.json());
app.use(express.urlencoded({extended:false}));
app.use(express.static(path.join(__dirname, "public")));

app.set("view engine", "hbs");
app.set("views", path.join(__dirname, "views"));
hbs.registerPartials(path.join(__dirname, "views/partials"));

app.listen(PORT, () => {
    // console.log(`Servidor Funcionando en el puerto ${PORT}`);
})

app.get("/",(req, res, next) => {
    // let sql = "SELECT * FROM card_services";
    
    // conexion.query(sql, (err, result) => {
    //     if(err) throw err;
    //     res.render("index", {
    //         title: "Inicio",
    //         results: result
    //     }) 
    // })

    res.render("index", {
        title:"Inicio"
    })
    
})



app.get("/about", (req, res) => {
    res.render("about", {
        title: "Nosotros",
        boxWork:[
            {titlePortfolio: "Post One", imgBx: 1},
            {titlePortfolio: "Post Two", imgBx: 2},
            {titlePortfolio: "Post Three", imgBx: 3},
            {titlePortfolio: "Post Four", imgBx: 4},
        ]
    })
})

app.get("/contact", (req, res) => {
    res.render("contact", {
        title: "Contacto"
    })
})

app.post("/contact", (req, res) => {
    const {fullName, email, message} = req.body;

    if(fullName == "" || email == ""  || message ==  "") {
        let validacion = "Campo Obligatorio"

        res.render("contact", {
            title: "Contacto",
            validacion
        })
    } else {
        console.log(fullName);
        console.log(email);
        console.log(message);
        async function envioMail() {
            let transportador = nodemailer.createTransport({
                host: "smtp.gmail.com",
                port: 465,
                secure: true,
                auth: {
                    user: process.env.USEREMAIL,
                    pass: process.env.PASSWORDEMAIL
                }  
            });

            let envio = await transportador.sendMail({
                from: process.env.USEREMAIL,
                to: `${email}`,
                subject: "Presupuesto",
                html: `${message}`
            });

            res.render("enviado", {
                title: "Contacto",
                fullName,
                email
            })
        }
        envioMail()
    }
})