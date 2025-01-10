import { Router } from 'express'

export const createLandingRouter = () => {
  const landingRouter = Router()

  landingRouter.get('/', async (req, res) => {
    res.send('<h1>Funcionando :)</h1>')
  })

  return landingRouter
}
