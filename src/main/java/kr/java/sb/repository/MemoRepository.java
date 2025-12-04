package kr.java.sb.repository;

import kr.java.sb.entity.Memo;
import org.springframework.data.jpa.repository.JpaRepository;

// @Repository 생략 가능 -> JpaRepository 알아서 스캔됨 + @Repository -> Spring Data -> 발생될 수 있는 에러타입을 정리해주는 기능...
// JpaRepository<엔터티타입, ID(PK)타입>
public interface MemoRepository extends JpaRepository<Memo, Long> {
}