package com.urooj.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.urooj.entity.Fellows;

@Repository
public interface FellowsRepository extends JpaRepository<Fellows, Integer> {

}
