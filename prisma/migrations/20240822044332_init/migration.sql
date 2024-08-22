-- CreateTable
CREATE TABLE "Phantom" (
    "id" SERIAL NOT NULL,

    CONSTRAINT "Phantom_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ThingA" (
    "id" INTEGER NOT NULL DEFAULT nextval('"Phantom_id_seq"'),

    CONSTRAINT "ThingA_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ThingB" (
    "id" INTEGER NOT NULL DEFAULT nextval('"Phantom_id_seq"'),

    CONSTRAINT "ThingB_pkey" PRIMARY KEY ("id")
);
