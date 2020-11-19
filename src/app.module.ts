import { Module } from '@nestjs/common';
import * as dotenv from 'dotenv';
import { AppController } from './app.controller';
import { AppService } from './app.service';

// Recover the custom env variables
dotenv.config({
  path: process.env.NODE_ENV === 'production'
    ? '.env'
    : (process.env.NODE_ENV === 'development' ? '.env.dev' : '.env.test')
});

@Module({
  imports: [],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
