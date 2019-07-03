using System;
using System.Linq;

namespace SpyGlass.Framework.Repository
{
    public interface IRepository<T>
    {
        T Save(T entity);
        void Delete(T entity);
        IQueryable<T> GetAll();
        T GetById(Guid id);
    }
}
