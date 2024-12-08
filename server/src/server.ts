import express from 'express';
import routes from './routes/index.js';
import dotenv from 'dotenv';
// import { sequelize } from './config/connection.js';

dotenv.config();

const app = express();
const PORT = process.env.SERVER_PORT || 3001;
// const forceDatabaseRefresh = false;

// Use the calendarRouter for routes starting with '/calendar'
app.use(routes);
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
// Serves static files in the entire client's dist folder
app.use(express.static('../client/dist'));
app.use((_req, res, next) => {
  res.header("Access-Control-Allow-Origin", "http://localhost:3000");
  res.header("Access-Control-Allow-Methods", "GET, POST, PUT, DELETE");
  res.header("Access-Control-Allow-Headers", "Content-Type");
  next();
});

// Your server's listening port

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});

// sequelize.sync({ force: forceDatabaseRefresh }).then(() => {
//   app.listen(PORT, () => {
//     console.log(`Server is listening on port ${PORT}`);
//   });
// });
