import {login} from '../repository/userRepository.js'

import {Router} from 'express';
const server = Router();



server.post('/usuario/login', async (req, resp) => {
    try{
        const {email, senha} = req.body;
        const reposta = await login(email, senha);
        resp.send(reposta)
    } catch (err) {
        resp.status(400).send({
            erro: 'Ocorreu um erro!'
        });
    }
})

export default server;