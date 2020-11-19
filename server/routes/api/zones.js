import express from 'express';
import zones from '@controllers/zones';
import trim from '@middlewares/trim';
import { verifyToken } from '@middlewares/Token';
import { zoneFinder, zonePermission } from '@middlewares/zoneFinder';

const zoneRouter = express.Router();

zoneRouter.post('/', verifyToken, trim, zones.create);
zoneRouter.get('/', verifyToken, zones.getAll);
zoneRouter.get('/:id', verifyToken, zoneFinder, zones.getById);
zoneRouter.put('/:id', verifyToken, zoneFinder, zonePermission, zones.update);
zoneRouter.delete('/:id', verifyToken, zoneFinder, zonePermission, zones.delete);

export default zoneRouter;
