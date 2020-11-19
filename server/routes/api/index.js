import express from 'express';
import userRouter from './users';
import zoneRouter from './zones';
import branchRouter from './branches';
import fellowshipRouter from './fellowships';
import eventRouter from './events';
import categoryRouter from './categories';
import downloadRouter from './downloads';
import preacherRouter from './preachers';
import reportRouter from './reports';
import configRouter from './configs';
import countryRouter from './countries';
import stateRouter from './states';
import cityRouter from './cities';

const apiRouter = express.Router();

apiRouter.get('/', (req, res) => res.status(200).send('Welcome to the Churchify-App API'));

apiRouter.use('/', userRouter);
apiRouter.use('/zones', zoneRouter);
apiRouter.use('/branches', branchRouter);
apiRouter.use('/fellowships', fellowshipRouter);
apiRouter.use('/events', eventRouter);
apiRouter.use('/categories', categoryRouter);
apiRouter.use('/downloads', downloadRouter);
apiRouter.use('/preachers', preacherRouter);
apiRouter.use('/reports', reportRouter);
apiRouter.use('/configs', configRouter);
apiRouter.use('/countries', countryRouter);
apiRouter.use('/states', stateRouter);
apiRouter.use('/cities', cityRouter);

export default apiRouter;
