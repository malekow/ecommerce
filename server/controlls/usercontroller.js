import Users from "../models/usermodel.js";
import generateToken from "../utils/generateToken.js";



export const register = async(req, res)=>{
    const {name, email, password, address, phone} = req.body;


const userExists =await Users.findOne({email})
if (userExists) {
    res.status(400).json({message:'user already exists'})
}

    const user = Users.create({
        name, email, password, address, phone
    })

    if (user) {
        res.status(201).json({
            _id:user._id,
            name:user.name,
            email:user.email,
            password:user.password,
            address:user.address,
            phone:user.phone,
            token:generateToken(user._id)

        })
    }else{
        res.status(401).json({
            message:'Invalid user data'
        });
    }
}

export const login =async(req, res)=>{
    const {email, password} = req.body;

    const user = Users.findOne({email});

    if (user && password ==  user.password) {
        res.status(200).json({
            _id:user._id,
            name:user.name,
            email:user.email,
            password:user.password,
            address:user.address,
            phone:user.phone,
            token:generateToken(user._id)
        })

    }else{
        res.status(404).json({
            message:'Invalid email or password'
        });
    }
}