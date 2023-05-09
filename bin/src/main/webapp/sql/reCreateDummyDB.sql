/* 맨 위쪽 2줄은 맨처음엔 직접 입력해야 할수도있어 mysql cli 열어서 하나씩 실행시켜줘!*/
CREATE DATABASE IF NOT EXISTS kindergardenDB;
DROP TABLE IF EXISTS users;

/* 칼럼은 말 그대로 더미라서 앞으로 어떻게 바뀔지 몰라 참고만 해줘! */
CREATE TABLE users (
  userid VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  phone VARCHAR(20) NOT NULL,
  address VARCHAR(255) NOT NULL,
  password VARCHAR(20),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (userid)
);

INSERT INTO users (userid, email, phone, address, password)
VALUES
('admin', 'user1@example.com', '010-456-7890', '서울시 강남구 역삼동 123-456', '1234'),
('yoon', 'user2@example.com', '010-789-0123', '서울시 서초구 반포동 456-789', '1234'),
('sun', 'user3@example.com', '010-012-3456', '서울시 송파구 잠실동 789-012', '1234'),
('goeun', 'user4@example.com', '010-765-4321', '서울시 종로구 종로동 987-654', '1234'),
('siena', 'user5@example.com', '010-210-9876', '서울시 마포구 서교동 654-321', '1234'),
('heesu', 'user6@example.com', '010-123-4567', '서울시 강동구 천호동 111-111', '1234');