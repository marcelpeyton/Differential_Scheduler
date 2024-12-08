import { Router } from 'express';
import authRoutes from './authRoutes.js';
import apiRoutes from './api/index.js';
import htmlRoutes from './htmlRoutes.js';


const router = Router();

router.use('/auth', authRoutes);
router.use('/api', apiRoutes);
router.use('/', htmlRoutes);

export default router;