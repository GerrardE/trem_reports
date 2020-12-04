import express from 'express';
import cities from '@controllers/cities';
import { verifyToken } from '@middlewares/Token';
import cityFinder from '@middlewares/city.middleware';
import stateFinder from '@middlewares/state.middleware';

const cityRouter = express.Router();

cityRouter.get('/:id', verifyToken, cityFinder, cities.getById);
cityRouter.get('/:id/state', verifyToken, stateFinder, cities.getByStateId);

export default cityRouter;