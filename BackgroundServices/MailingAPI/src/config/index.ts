////////////////////////
/////// IMPORTS ///////
////////////////////////
import dotenv from 'dotenv';
import path from 'path';
dotenv.config({ path: path.resolve(__dirname, '../../.env') });
// EXPORT SQL SERVER CONFIGURATION
export const sqlConfig = {
  user: process.env.DB_USER as string,
  password: process.env.DB_PWD as string,
  database: process.env.DB_NAME as string,
  server: process.env.DB_SERVER as string,
  pool: {
    max: 10,
    min: 0,
    idleTimeoutMillis: 30000
  },
  options: {
    encrypt: true, // true for azure
    trustServerCertificate: true // change to true for local dev / self-signed certs
  }
}


