import {Router, Request, Response} from 'express';

import {User} from '../models/User';
import {AuthRouter} from './auth.router';

const router: Router = Router();

router.use('/auth', AuthRouter);

router.get('/',async (req: Request, res: Response) => {
  const items = await User.findAndCountAll();
  res.send(items);
});

router.get('/:id', async (req: Request, res: Response) => {
  const {id} = req.params;
  const item = await User.findByPk(id);
  res.send(item);
});

export const UserRouter: Router = router;
