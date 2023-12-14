import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/services/prisma';
import { Project } from 'src/types/projects';

@Injectable()
export class ProjectsService {
  constructor(private prisma: PrismaService) {}

  //Cria Projeto
  async createProjet(data): Promise<Project> {
    return await this.prisma.project.create({
      data,
    });
  }
  //Deleta Projeto
  async deleteProject(id: string) {
    await this.prisma.project.delete({
      where: { id },
    });

    return `Projeto deletado com sucesso\nid: ${id}`;
  }
  //Atualiza o projeto
  async updateProject(id: string, data) {
    return await this.prisma.project.update({
      data,
      where: { id },
    });
  }
  //Recebe todos os projetos
  async getAllProjects() {
    return this.prisma.project.findMany();
  }
  //Recebe um projeto especifico por id
  async getProject(id: string) {
    return await this.prisma.project.findUnique({
      where: { id },
    });
  }
}
