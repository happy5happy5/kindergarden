/* 맨 위쪽 2줄은 맨처음엔 직접 입력해야 할수도있어 mysql cli 열어서 하나씩 실행시켜줘!*/
CREATE DATABASE IF NOT EXISTS kindergardenDB;
DROP TABLE IF EXISTS notifications;
DROP TABLE IF EXISTS users;
/* 칼럼은 말 그대로 더미라서 앞으로 어떻게 바뀔지 몰라 참고만 해줘! */
CREATE TABLE users (
  userid VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  phone VARCHAR(20) NOT NULL,
  address VARCHAR(255),
  password VARCHAR(20),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (userid)
);
ALTER TABLE users MODIFY address VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
INSERT INTO users (userid, email, phone, address, password)
VALUES
('admin', 'user1@example.com', '010-456-7890', '서울시 강남구 역삼동 123-456', '1234'),
('yoon', 'user2@example.com', '010-789-0123', '서울시 서초구 반포동 456-789', '1234'),
('sun', 'user3@example.com', '010-012-3456', '서울시 송파구 잠실동 789-012', '1234'),
('goeun', 'user4@example.com', '010-765-4321', '서울시 종로구 종로동 987-654', '1234'),
('siena', 'user5@example.com', '010-210-9876', '서울시 마포구 서교동 654-321', '1234'),
('heesu', 'user6@example.com', '010-123-4567', '서울시 강동구 천호동 111-111', '1234');



CREATE TABLE notifications (
    id INT NOT NULL AUTO_INCREMENT,
    image BLOB NOT NULL,
    date DATE,
    userid VARCHAR(255) NOT NULL,
    dogname VARCHAR(255),
    comment VARCHAR(255),
    PRIMARY KEY (id),
    FOREIGN KEY (userid) REFERENCES users(userid)
);

INSERT INTO notifications (image, date, userid, dogname, comment) 
VALUES
    (LOAD_FILE('/teamproject/src/main/webapp/resources/img_dog/image1.jpg'), '2021-01-01', 'admin', 'Buddy', '오늘도 잘했어요!'),
    (LOAD_FILE('/teamproject/src/main/webapp/resources/img_dog/image2.jpg'), '2021-01-02', 'admin', 'Buddy', '계속해서 열심히 하세요!'),
    (LOAD_FILE('/teamproject/src/main/webapp/resources/img_dog/image3.jpg'), '2021-01-03', 'yoon', 'Charlie', '조금 더 노력해봅시다.'),
    (LOAD_FILE('/teamproject/src/main/webapp/resources/img_dog/image4.jpg'), '2021-01-04', 'yoon', 'Charlie', '다음에는 더 잘할 수 있을 거예요.'),
    (LOAD_FILE('/teamproject/src/main/webapp/resources/img_dog/image5.jpg'), '2021-01-05', 'sun', 'Max', '정말 멋있게 해냈어요!'),
    (LOAD_FILE('/teamproject/src/main/webapp/resources/img_dog/image6.jpg'), '2021-01-06', 'sun', 'Max', '오늘도 수고했어요.'),
    (LOAD_FILE('/teamproject/src/main/webapp/resources/img_dog/image7.jpg'), '2021-01-07', 'goeun', 'Lucy', '정말 자랑스러워요!'),
    (LOAD_FILE('/teamproject/src/main/webapp/resources/img_dog/image8.jpg'), '2021-01-08', 'goeun', 'Lucy', '계속해서 잘하고 있어요.'),
    (LOAD_FILE('/teamproject/src/main/webapp/resources/img_dog/image9.jpg'), '2021-01-09', 'siena', 'Daisy', '오늘도 최고예요.'),
    (LOAD_FILE('/teamproject/src/main/webapp/resources/img_dog/image10.jpg'), '2021-01-10', 'siena', 'Daisy', '계속해서 멋지게 해냅시다!');
    
    
    
    
INSERT INTO notifications (image, date, userid, dogname, comment) 
VALUES
    (LOAD_FILE('/teamproject/src/main/webapp/resources/img_dog/image1.jpg'), '2021-01-01', 'admin', 'Buddy', '오늘도 잘했어요!'); 
    
    
    
  DROP TABLE IF EXISTS test_blob;  
  CREATE TABLE test_blob (
    id INT NOT NULL AUTO_INCREMENT,
    image BLOB(16777216) NOT NULL  ,
    PRIMARY KEY (id)
    )
    
 INSERT INTO test_blob (image) 
VALUES
    (LOAD_FILE('c:/upload/1378725990210.jpg')); 
       
    
    
    SELECT * FROM mysql.user WHERE User='root';