import pool from '../../database/db.js'

export class UserModel {
  static async getAll () {
    try {
      const query = {
        name: 'fetch-all-users', // Nombre único para la consulta
        text: 'SELECT id, nombre, correo, edad FROM usuarios'
      }
      const res = await pool.query(query)
      return res.rows
    } catch (error) {
      console.error('Error fetching all users:', error)
      throw new Error('Database query failed')
    }
  }

  static async getById ({ id }) {
    try {
      const query = {
        name: 'fetch-user-by-id', // Nombre único para la consulta
        text: 'SELECT id, nombre, correo, edad FROM usuarios WHERE id = $1',
        values: [id] // Los valores para los parámetros
      }
      const res = await pool.query(query)

      if (res.rows.length === 0) return null

      return res.rows[0]
    } catch (error) {
      console.error(`Error fetching user with id ${id}:`, error)
      throw new Error('Database query failed')
    }
  }
}
