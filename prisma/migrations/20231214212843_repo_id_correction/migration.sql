-- DropForeignKey
ALTER TABLE `project` DROP FOREIGN KEY `Project_repoId_fkey`;

-- AlterTable
ALTER TABLE `project` MODIFY `repoId` VARCHAR(191) NULL;

-- AddForeignKey
ALTER TABLE `Project` ADD CONSTRAINT `Project_repoId_fkey` FOREIGN KEY (`repoId`) REFERENCES `Repo`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
