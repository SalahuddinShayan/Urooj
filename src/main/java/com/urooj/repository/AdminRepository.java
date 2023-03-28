package com.urooj.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.urooj.entity.Admin;

@Repository
public interface AdminRepository extends JpaRepository<Admin, String> {
	
	@Query(value = "SELECT Password FROM Admin WHERE login = :login ", nativeQuery = true)
    String  getp(@Param("login") String login);
	

}
