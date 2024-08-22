-- AlterTable
ALTER TABLE "ThingA" ALTER COLUMN "id" SET DEFAULT nextval('"Phantom_id_seq"'),
ALTER COLUMN "id" DROP DEFAULT;
DROP SEQUENCE "Phantom_id_seq";

-- AlterTable
ALTER TABLE "ThingB" ALTER COLUMN "id" SET DEFAULT nextval('"Phantom_id_seq"'),
ALTER COLUMN "id" DROP DEFAULT;
DROP SEQUENCE "Phantom_id_seq";
