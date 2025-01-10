const express = require('express')

const app = express()

const PORT = process.env.PORT ?? 1234

app.get('/', (req, res) => {
  res.send('<h1>XD</h1>')
})

app.use((req, res) => {
  res.status(404).json({ message: 'Error 404' })
})

app.listen(PORT, () => {
  console.log(`Server listening on port http://localhost:${PORT}`)
})
