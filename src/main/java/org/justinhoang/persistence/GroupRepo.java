package org.justinhoang.persistence;

import org.justinhoang.entity.Group;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 * The interface Group repo.
 * Hibernate used for all data access.
 */
@Repository("groupRepo")
public interface GroupRepo extends CrudRepository<Group, Long>
{

}
