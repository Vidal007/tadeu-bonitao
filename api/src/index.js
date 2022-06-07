import 'dotenv/config'
import express from 'express'
import cors from 'cors'

import userController from './controller/userController.js'

const server = express();
server.use(cors());
server.use(express.json());

server.use(userController);



server.listen(process.env.PORT, () => console.log (`API conectada na Porta ${process.env.PORT}`));