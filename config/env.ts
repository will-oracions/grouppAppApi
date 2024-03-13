export default {
  // App
  PORT: process.env.PORT || 1337,

  // Database
  DATABASE_URL: process.env.DATABASE_URL || "",

  DATABASE_PROVIDER: process.env.DATABASE_PROVIDER || "mysql",
  DATABASE_HOST: process.env.DATABASE_HOST || "localhost",
  DATABASE_PORT: Number(process.env.DATABASE_PORT) || 3306,
  DATABASE_USER: process.env.DATABASE_USER || "default_user",
  DATABASE_PASSWORD: process.env.DATABASE_PASSWORD || "fake_password",
  DATABASE_NAME: process.env.DATABASE_NAME || "database_name",

  DATABASE_LOGGING: process.env.DATABASE_LOGGING === "true" ? true : false,
  DATABASE_SYNC: process.env.DATABASE_SYNC === "true" ? true : false,

  // JWT
  JWT8_SIGN_SECRET: process.env.JWT8_SIGN_SECRET || "secret",
};
