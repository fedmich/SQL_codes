SET @url = 'https://www.netflix.com/title/####';
SET @excerpt = 'In the wake of a ....';

INSERT INTO titles (url, excerpt, last_update, md5)
VALUES (
    @url,
    @excerpt,
    CURRENT_TIMESTAMP,
    MD5(@url)
)
ON DUPLICATE KEY UPDATE
    excerpt = @excerpt,
    last_update = CURRENT_TIMESTAMP;
