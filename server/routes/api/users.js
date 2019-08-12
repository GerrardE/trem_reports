import express from 'express';
import users from '../../controllers/users';
import trim from '../../middlewares/trim';

const userRouter = express.Router();

userRouter.post('/auth/signup', trim, users.signup);

export default userRouter;
