import {Sequelize} from 'sequelize-typescript';
import {config} from './config/config';


export const sequelize = new Sequelize({
  'username': config.username,
  'password': config.password,
  'database': config.database,
  'host': config.host,

  'dialect': config.dialect,
  'storage': ':memory:',
  'dialectOptions': {
    ssl: {
      require: true,                // Ensure SSL is required
      rejectUnauthorized: false     // Skip SSL certificate verification (if self-signed)
    }
  }
});
