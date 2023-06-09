import express from 'express'
import os from 'os'

const app = express()
const PORT = 3001

app.get("/", (req,res) => {
    const helloMessage = `Version 1: Hello from ths ${os.hostname()} main`;
    res.send(helloMessage);
})

app.listen(PORT, () => {
    console.log(`Version 1: Web server main is listening on Port ${PORT} main`);
})