import express from 'express';
import connectDB from './database/db.js';
import userRoutes from './routes/userroutes.js';

connectDB()

const app = express()

app.use(express.json())
app.use('/api/users',userRoutes)

const port = process.env.PORT ||5000
app.listen(()=>{
console.log(`server is running on port ${port}`)
})