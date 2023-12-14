-- CreateTable
CREATE TABLE `Project` (
    `id` VARCHAR(191) NOT NULL,
    `href` VARCHAR(191) NOT NULL,
    `title` VARCHAR(191) NOT NULL,
    `imagePath` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NOT NULL,
    `repoId` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `Project_repoId_key`(`repoId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Repo` (
    `id` VARCHAR(191) NOT NULL,
    `projectId` VARCHAR(191) NOT NULL,
    `href` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `Repo_id_key`(`id`),
    UNIQUE INDEX `Repo_projectId_key`(`projectId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Project` ADD CONSTRAINT `Project_repoId_fkey` FOREIGN KEY (`repoId`) REFERENCES `Repo`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
