import express, { json } from 'express'
import { UserModel } from './models/postgresql/user.js'
import { createUserRouter } from './routes/user.js'
import { createLandingRouter } from './routes/landing.js'
import { corsMiddleware } from './middlewares/cors.js'

const app = express()
app.use(json())
app.use(corsMiddleware())
app.disable('x-powered-by')

app.use('/', createLandingRouter())
app.use('/api/data', createUserRouter({ userModel: UserModel }))
app.use((req, res) => {
  res.status(404).json({ message: 'Error 404' })
})

const PORT = process.env.PORT ?? 3000

app.listen(PORT, () => {
  console.log(`Servidor corriendo en http://localhost:${PORT}`)
})
