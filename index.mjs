import express from 'express'
import os from 'os'

const app = express()
const PORT = 3001

app.get("/", (req,res) => {
    const helloMessage = `Version 1: Helloo from ths ${os.hostname()}`;
    res.send(helloMessage);
})

app.listen(PORT, () => {
    console.log(`Version 1: Web server is listening on Port ${PORT}`);
})