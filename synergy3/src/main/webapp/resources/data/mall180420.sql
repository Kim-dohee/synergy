-- --------------------------------------------------------
-- 호스트:                          umj64-008.cafe24.com
-- 서버 버전:                        5.5.17-log - MySQL Community Server (GPL)
-- 서버 OS:                        Linux
-- HeidiSQL 버전:                  8.0.0.4396
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- ehgml1505 의 데이터베이스 구조 덤핑
DROP DATABASE IF EXISTS `ehgml1505`;
CREATE DATABASE IF NOT EXISTS `ehgml1505` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ehgml1505`;


-- 테이블 ehgml1505의 구조를 덤프합니다. admin
DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_no` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` varchar(30) NOT NULL,
  `admin_pw` varchar(30) NOT NULL,
  `admin_name` varchar(30) NOT NULL,
  `admin_phone` int(11) NOT NULL,
  `admin_address` varchar(30) NOT NULL,
  `admin_joindate` varchar(30) NOT NULL,
  PRIMARY KEY (`admin_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.


-- 테이블 ehgml1505의 구조를 덤프합니다. answer
DROP TABLE IF EXISTS `answer`;
CREATE TABLE IF NOT EXISTS `answer` (
  `answer_no` varchar(30) NOT NULL,
  `question_no` varchar(30) NOT NULL,
  `answer_content` varchar(500) NOT NULL,
  `answer_date` varchar(30) NOT NULL,
  PRIMARY KEY (`answer_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.


-- 테이블 ehgml1505의 구조를 덤프합니다. auction_goods
DROP TABLE IF EXISTS `auction_goods`;
CREATE TABLE IF NOT EXISTS `auction_goods` (
  `auction_goods_no` varchar(30) NOT NULL,
  `auction_goods_file_no` varchar(30) NOT NULL,
  `donation_paln_no` varchar(30) NOT NULL,
  `auction_state_no` varchar(30) NOT NULL,
  `user_no` varchar(30) NOT NULL,
  `small_category_no` varchar(30) NOT NULL,
  `auction_goods_min_price` int(11) NOT NULL,
  `auction_goods_title` varchar(30) NOT NULL,
  `auction_goods_content` varchar(500) NOT NULL,
  `auction_goods_instance_buy_price` int(11) NOT NULL,
  `auction_goods_name` varchar(30) NOT NULL,
  `auction_goods_bid_unit` int(11) NOT NULL,
  `auction_goods_date` varchar(30) NOT NULL,
  `auction_goods_pay_term` varchar(30) NOT NULL,
  `auction_goods_bid_term` varchar(30) NOT NULL,
  `auction_goods_bid_start_date` varchar(30) NOT NULL,
  `auction_goods_bid_end_date` varchar(30) NOT NULL,
  `auction_goods_hits` int(11) NOT NULL,
  PRIMARY KEY (`auction_goods_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.


-- 테이블 ehgml1505의 구조를 덤프합니다. auction_state
DROP TABLE IF EXISTS `auction_state`;
CREATE TABLE IF NOT EXISTS `auction_state` (
  `auction_state_no` varchar(30) NOT NULL,
  `autcion_state` varchar(30) NOT NULL,
  `autcion_state_reason` varchar(30) NOT NULL,
  PRIMARY KEY (`auction_state_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.


-- 테이블 ehgml1505의 구조를 덤프합니다. bid
DROP TABLE IF EXISTS `bid`;
CREATE TABLE IF NOT EXISTS `bid` (
  `bid_no` varchar(30) NOT NULL,
  `user_no` varchar(30) DEFAULT NULL,
  `auction_goods_no` varchar(30) DEFAULT NULL,
  `bid_price` int(11) NOT NULL,
  `bid_date` varchar(30) NOT NULL,
  PRIMARY KEY (`bid_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.


-- 테이블 ehgml1505의 구조를 덤프합니다. big_category
DROP TABLE IF EXISTS `big_category`;
CREATE TABLE IF NOT EXISTS `big_category` (
  `big_category_no` varchar(30) NOT NULL,
  `big_category_name` varchar(30) NOT NULL,
  PRIMARY KEY (`big_category_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.


-- 테이블 ehgml1505의 구조를 덤프합니다. cash_category
DROP TABLE IF EXISTS `cash_category`;
CREATE TABLE IF NOT EXISTS `cash_category` (
  `cash_category_no` varchar(30) NOT NULL,
  `cash_category_reason` varchar(30) NOT NULL,
  PRIMARY KEY (`cash_category_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.


-- 테이블 ehgml1505의 구조를 덤프합니다. cash_record
DROP TABLE IF EXISTS `cash_record`;
CREATE TABLE IF NOT EXISTS `cash_record` (
  `cash_record_no` int(11) NOT NULL AUTO_INCREMENT,
  `cash_category_no` int(11) DEFAULT NULL,
  `user_no` int(11) NOT NULL,
  `cashrecord_change` int(11) DEFAULT NULL,
  `cashrecord_changedate` varchar(30) DEFAULT NULL,
  `cashrecord_total` int(11) NOT NULL,
  PRIMARY KEY (`cash_record_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.


-- 테이블 ehgml1505의 구조를 덤프합니다. credit_category
DROP TABLE IF EXISTS `credit_category`;
CREATE TABLE IF NOT EXISTS `credit_category` (
  `credit_category_no` varchar(30) NOT NULL,
  `credit_category_score` int(11) NOT NULL,
  `credit_category_reason` varchar(30) NOT NULL,
  PRIMARY KEY (`credit_category_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.


-- 테이블 ehgml1505의 구조를 덤프합니다. credit_record
DROP TABLE IF EXISTS `credit_record`;
CREATE TABLE IF NOT EXISTS `credit_record` (
  `credit_record_no` int(11) NOT NULL AUTO_INCREMENT,
  `user_no` int(11) NOT NULL,
  `credit_category_no` int(11) DEFAULT NULL,
  `credit_record_change_date` varchar(30) DEFAULT NULL,
  `credit_record_now_score` int(11) NOT NULL,
  PRIMARY KEY (`credit_record_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.


-- 테이블 ehgml1505의 구조를 덤프합니다. credit_right
DROP TABLE IF EXISTS `credit_right`;
CREATE TABLE IF NOT EXISTS `credit_right` (
  `credit_right_no` varchar(30) NOT NULL,
  `credit_right_grade` varchar(30) NOT NULL,
  `credit_right_note` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`credit_right_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.


-- 테이블 ehgml1505의 구조를 덤프합니다. donation_paln
DROP TABLE IF EXISTS `donation_paln`;
CREATE TABLE IF NOT EXISTS `donation_paln` (
  `donation_paln_no` varchar(30) NOT NULL,
  `donator_no` varchar(30) NOT NULL,
  `donation_plan_file_no` varchar(30) DEFAULT NULL,
  `donation_paln_title` varchar(30) NOT NULL,
  `donation_paln_content` varchar(500) NOT NULL,
  `donation_paln_purpose` varchar(30) NOT NULL,
  `donation_paln_use_term` varchar(30) NOT NULL,
  `donation_paln_goal_price` varchar(30) NOT NULL,
  `donation_paln_date` varchar(30) NOT NULL,
  PRIMARY KEY (`donation_paln_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.


-- 테이블 ehgml1505의 구조를 덤프합니다. donation_spend_report
DROP TABLE IF EXISTS `donation_spend_report`;
CREATE TABLE IF NOT EXISTS `donation_spend_report` (
  `donation_spend_report_no` varchar(30) NOT NULL,
  `donation_paln_no` varchar(30) NOT NULL,
  `donation_report_file_no` varchar(30) DEFAULT NULL,
  `income_donation_no` varchar(30) NOT NULL,
  `donation_spend_report_title` varchar(30) NOT NULL,
  `donation_spend_report_content` varchar(500) NOT NULL,
  `donation_spend_price_date` varchar(30) NOT NULL,
  `donation_spend_report_record` varchar(500) NOT NULL,
  `donation_spend_report_date` varchar(30) NOT NULL,
  PRIMARY KEY (`donation_spend_report_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.


-- 테이블 ehgml1505의 구조를 덤프합니다. donation_use
DROP TABLE IF EXISTS `donation_use`;
CREATE TABLE IF NOT EXISTS `donation_use` (
  `donation_use_no` varchar(30) NOT NULL,
  `donation_paln_no` varchar(30) NOT NULL,
  `donation_use` varchar(30) NOT NULL,
  `donation_use_way` varchar(30) NOT NULL,
  `donation_use_price` int(11) NOT NULL,
  `donation_use_date` varchar(30) NOT NULL,
  PRIMARY KEY (`donation_use_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.


-- 테이블 ehgml1505의 구조를 덤프합니다. donator
DROP TABLE IF EXISTS `donator`;
CREATE TABLE IF NOT EXISTS `donator` (
  `donator_no` int(11) NOT NULL AUTO_INCREMENT,
  `donator_id` varchar(30) NOT NULL,
  `donator_pw` varchar(30) NOT NULL,
  `donator_business_no` int(11) NOT NULL,
  `donator_name` varchar(30) NOT NULL,
  `donator_telephone` int(11) NOT NULL,
  `donator_homepage` varchar(30) DEFAULT NULL,
  `donator_join_date` varchar(30) NOT NULL,
  PRIMARY KEY (`donator_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.


-- 테이블 ehgml1505의 구조를 덤프합니다. file
DROP TABLE IF EXISTS `file`;
CREATE TABLE IF NOT EXISTS `file` (
  `file_no` varchar(50) NOT NULL,
  `file_fk_no` varchar(50) DEFAULT NULL,
  `file_table_name` varchar(50) DEFAULT NULL,
  `file_name` varchar(50) DEFAULT NULL,
  `file_type` varchar(50) DEFAULT NULL,
  `file_ext` varchar(50) DEFAULT NULL,
  `file_size` int(10) DEFAULT NULL,
  PRIMARY KEY (`file_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.


-- 테이블 ehgml1505의 구조를 덤프합니다. income_donation
DROP TABLE IF EXISTS `income_donation`;
CREATE TABLE IF NOT EXISTS `income_donation` (
  `income_donation_no` varchar(30) NOT NULL,
  `donation_paln_no` varchar(30) NOT NULL,
  `pay_no` varchar(30) NOT NULL,
  `user_no` varchar(30) NOT NULL,
  `income_donation_price` int(11) NOT NULL,
  `income_donation_date` varchar(30) NOT NULL,
  PRIMARY KEY (`income_donation_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.


-- 테이블 ehgml1505의 구조를 덤프합니다. notice
DROP TABLE IF EXISTS `notice`;
CREATE TABLE IF NOT EXISTS `notice` (
  `notice_no` varchar(30) NOT NULL,
  `admin_no` varchar(30) NOT NULL,
  `notice_file` varchar(30) DEFAULT NULL,
  `notice_title` varchar(30) NOT NULL,
  `notice_content` varchar(500) NOT NULL,
  `notice_date` varchar(30) NOT NULL,
  `notice_hits` int(11) NOT NULL,
  PRIMARY KEY (`notice_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.


-- 테이블 ehgml1505의 구조를 덤프합니다. pay
DROP TABLE IF EXISTS `pay`;
CREATE TABLE IF NOT EXISTS `pay` (
  `pay_no` varchar(30) NOT NULL,
  `user_no2` varchar(30) NOT NULL,
  `user_no` varchar(30) NOT NULL,
  `cash_record_no` varchar(30) NOT NULL,
  `successful_bid_no` varchar(30) NOT NULL,
  `pay_state` varchar(30) NOT NULL,
  `pay_buyer_complete_date` varchar(30) DEFAULT NULL,
  `pay_seller_delivery_date` varchar(30) DEFAULT NULL,
  `pay_buyer_receipt_confirm_date` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`pay_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.


-- 테이블 ehgml1505의 구조를 덤프합니다. question
DROP TABLE IF EXISTS `question`;
CREATE TABLE IF NOT EXISTS `question` (
  `question_no` varchar(30) NOT NULL,
  `user_no` varchar(30) NOT NULL,
  `question_category_no` varchar(30) NOT NULL,
  `question_title` varchar(30) NOT NULL,
  `question_content` varchar(500) NOT NULL,
  `question_file` varchar(30) DEFAULT NULL,
  `question_date` varchar(30) NOT NULL,
  PRIMARY KEY (`question_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.


-- 테이블 ehgml1505의 구조를 덤프합니다. question_category
DROP TABLE IF EXISTS `question_category`;
CREATE TABLE IF NOT EXISTS `question_category` (
  `question_category_no` varchar(30) NOT NULL,
  `question_category_name` varchar(30) NOT NULL,
  PRIMARY KEY (`question_category_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.


-- 테이블 ehgml1505의 구조를 덤프합니다. remove
DROP TABLE IF EXISTS `remove`;
CREATE TABLE IF NOT EXISTS `remove` (
  `remove_no` varchar(30) NOT NULL,
  `donator_no` varchar(30) DEFAULT NULL,
  `user_no` varchar(30) DEFAULT NULL,
  `remove_id` varchar(30) NOT NULL,
  `remove_date` varchar(30) NOT NULL,
  PRIMARY KEY (`remove_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.


-- 테이블 ehgml1505의 구조를 덤프합니다. small_category
DROP TABLE IF EXISTS `small_category`;
CREATE TABLE IF NOT EXISTS `small_category` (
  `small_category_no` varchar(30) NOT NULL,
  `big_category_no` varchar(30) NOT NULL,
  `small_category_name` varchar(30) NOT NULL,
  PRIMARY KEY (`small_category_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.


-- 테이블 ehgml1505의 구조를 덤프합니다. successful_bid
DROP TABLE IF EXISTS `successful_bid`;
CREATE TABLE IF NOT EXISTS `successful_bid` (
  `successful_bid_no` varchar(30) NOT NULL,
  `bid_no` varchar(30) NOT NULL,
  `successful_bid_price` int(11) NOT NULL,
  `successful_bid_date` varchar(30) NOT NULL,
  `successful_bid_pay_end_date` varchar(30) NOT NULL,
  `successful_bid_cancel` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`successful_bid_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.


-- 테이블 ehgml1505의 구조를 덤프합니다. user
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_no` int(11) NOT NULL AUTO_INCREMENT,
  `credit_right_no` varchar(30) DEFAULT NULL,
  `user_id` varchar(30) NOT NULL,
  `user_pw` varchar(30) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_phone` int(11) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `user_nick` varchar(30) NOT NULL,
  `user_joindate` varchar(30) NOT NULL,
  PRIMARY KEY (`user_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
