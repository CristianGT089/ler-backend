import pool from '../../database/db.js'

export class UserModel {
  static async getAll () {
    const { rows } = await pool.query('SELECT * from usuarios')
    return rows
  }
}
