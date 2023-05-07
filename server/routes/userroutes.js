import express, { Router } from 'express';
import { register } from '../controlls/usercontrollers.js';


const routes = express.Router()

routes.route('/').post(register)
routes.route('/').post(login)

export default routes