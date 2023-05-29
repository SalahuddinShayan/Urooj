package com.urooj.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.urooj.entity.TeamMembers;

@Repository
public interface TeamMembersRepository extends JpaRepository<TeamMembers, Integer> {

}
