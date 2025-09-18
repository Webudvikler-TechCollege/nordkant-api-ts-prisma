/*
  Warnings:

  - You are about to drop the column `imageUrlUrl` on the `products` table. All the data in the column will be lost.
  - Added the required column `imageUrl` to the `products` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `products` DROP COLUMN `imageUrlUrl`,
    ADD COLUMN `imageUrl` VARCHAR(191) NOT NULL;
