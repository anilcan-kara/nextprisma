-- CreateTable
CREATE TABLE "users" (
    "uid" UUID NOT NULL,
    "iat" TIMESTAMPTZ(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "uat" TIMESTAMPTZ(6),
    "dat" TIMESTAMPTZ(6),
    "name" VARCHAR,
    "mail" VARCHAR NOT NULL,
    "password" VARCHAR,
    "active" BOOLEAN,
    "mail_confirmed" BOOLEAN,

    CONSTRAINT "users_pk" PRIMARY KEY ("uid")
);

-- CreateIndex
CREATE UNIQUE INDEX "users_uid_idx" ON "users"("uid");

-- CreateIndex
CREATE UNIQUE INDEX "users_un" ON "users"("mail");
