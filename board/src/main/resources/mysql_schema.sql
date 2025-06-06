DROP TABLE IF EXISTS comment;
DROP TABLE IF EXISTS post;

CREATE TABLE post
(
    post_id BIGINT NOT NULL AUTO_INCREMENT,
    title    VARCHAR(30)  NOT NULL,
    contents VARCHAR(255) NOT NULL,
    PRIMARY KEY (post_id)
);

CREATE TABLE comment
(
    comment_id BIGINT NOT NULL AUTO_INCREMENT,
    post_id  BIGINT       NOT NULL,
    contents VARCHAR(255) NOT NULL,
    PRIMARY KEY (comment_id)
);

CREATE INDEX idx_comment_postId ON comment (post_id);