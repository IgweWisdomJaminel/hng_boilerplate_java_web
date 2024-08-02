ALTER TABLE organisations
    ADD COLUMN IF NOT EXISTS slug VARCHAR(255) UNIQUE,
    ADD COLUMN IF NOT EXISTS owner_id UUID REFERENCES users(id),
    ADD COLUMN IF NOT EXISTS email VARCHAR(255),
    ADD COLUMN IF NOT EXISTS industry VARCHAR(255),
    ADD COLUMN IF NOT EXISTS type VARCHAR(255),
    ADD COLUMN IF NOT EXISTS country VARCHAR(255),
    ADD COLUMN IF NOT EXISTS address VARCHAR(255),
    ADD COLUMN IF NOT EXISTS state VARCHAR(255),
    ADD COLUMN IF NOT EXISTS created_at TIMESTAMP,
    ADD COLUMN IF NOT EXISTS updated_at TIMESTAMP;