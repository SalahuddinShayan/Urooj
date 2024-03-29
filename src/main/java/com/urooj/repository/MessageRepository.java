package com.urooj.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.urooj.entity.Messages;

@Repository
public interface MessageRepository extends JpaRepository<Messages, Long>{

}
