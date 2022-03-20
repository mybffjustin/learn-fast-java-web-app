package org.justinhoang.persistence;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.io.Serializable;
import java.util.List;

public abstract class AbsJpaDao<T extends Serializable>
{
    private Class<T> classx;

    @PersistenceContext(unitName = "entityManagerFactory")
    private EntityManager entityManager;

    public final void setClassx(final Class<T> classx)
    {
        this.classx = classx;
    }

    public T create(final T entity)
    {
        entityManager.persist(entity);
        return entity;
    }

    public T readId(final long id)
    {
        return entityManager.find(classx, id);
    }

    @SuppressWarnings("unchecked")
    public List<T> readAll()
    {
        return entityManager.createQuery("from " + classx.getName())
                            .getResultList();
    }

    public T update(final T entity)
    {
        return entityManager.merge(entity);
    }

    public void delete(final T entity)
    {
        entityManager.remove(entity);
    }

    public void deleteById(final long id)
    {
        final T entity = readId(id);
        delete(entity);
    }
}

