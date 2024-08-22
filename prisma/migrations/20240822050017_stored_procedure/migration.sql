CREATE OR REPLACE FUNCTION get_next_phantom_id() RETURNS integer AS $$
BEGIN
	RETURN nextval('Phantom_id_seq');
END;
$$ LANGUAGE plpgsql;

-- AlterTable
ALTER TABLE "ThingA" ALTER COLUMN "id" SET DEFAULT get_next_phantom_id(),
ALTER COLUMN "id" DROP DEFAULT;
-- DROP SEQUENCE "Phantom_id_seq"; manually ignored

-- AlterTable
ALTER TABLE "ThingB" ALTER COLUMN "id" SET DEFAULT get_next_phantom_id(),
ALTER COLUMN "id" DROP DEFAULT;
-- DROP SEQUENCE "Phantom_id_seq"; manually ignored
