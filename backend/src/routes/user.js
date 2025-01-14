import { Router } from 'express'
import { UserController } from '../controllers/user.js'

export const createUserRouter = ({ userModel }) => {
  const userRouter = Router()

  const userController = new UserController({ userModel })

  userRouter.get('/', userController.getAll)
  userRouter.get('/:id', userController.getById)

  return userRouter
}
