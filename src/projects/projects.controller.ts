import {
  Body,
  Controller,
  Delete,
  Get,
  Param,
  Patch,
  Post,
} from '@nestjs/common';
import { Project } from 'src/types/projects';
import { ProjectsService } from './projects.service';

@Controller()
export class ProjectsController {
  constructor(private readonly appService: ProjectsService) {}

  @Post()
  async createProject(@Body() data: Project) {
    return await this.appService.createProjet(data);
  }

  @Delete(':id')
  async deleteProject(@Param('id') id: string) {
    return await this.appService.deleteProject(id);
  }

  @Patch(':id')
  async updateProject(@Param('id') id: string, @Body() data) {
    return await this.appService.updateProject(id, data);
  }

  @Get()
  async getAllProjects() {
    return this.appService.getAllProjects();
  }

  @Get(':id')
  async getProject(@Param('id') id: string) {
    return await this.appService.getProject(id);
  }
}
