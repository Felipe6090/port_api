export interface Project {
  id?: string;
  href: string;
  title: string;
  imagePath: string;
  description: string;
  repo?: Repo;
  repoId?: string;
}

export interface Repo {
  id: string;
  href: string;
  project: Project;
  projectId: string;
}
