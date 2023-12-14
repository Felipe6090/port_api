-- CreateTable
CREATE TABLE "Project" (
    "id" TEXT NOT NULL,
    "href" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "imagePath" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "repoId" TEXT,

    CONSTRAINT "Project_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Repo" (
    "id" TEXT NOT NULL,
    "href" TEXT NOT NULL,
    "projectId" TEXT NOT NULL,

    CONSTRAINT "Repo_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Project_id_key" ON "Project"("id");

-- CreateIndex
CREATE UNIQUE INDEX "Project_repoId_key" ON "Project"("repoId");

-- CreateIndex
CREATE UNIQUE INDEX "Repo_id_key" ON "Repo"("id");

-- CreateIndex
CREATE UNIQUE INDEX "Repo_projectId_key" ON "Repo"("projectId");

-- AddForeignKey
ALTER TABLE "Project" ADD CONSTRAINT "Project_repoId_fkey" FOREIGN KEY ("repoId") REFERENCES "Repo"("id") ON DELETE SET NULL ON UPDATE CASCADE;
