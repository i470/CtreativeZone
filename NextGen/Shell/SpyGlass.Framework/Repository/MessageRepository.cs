using LiteDB;
using SpyGlass.Framework.Model;
using System;
using System.Linq;

namespace SpyGlass.Framework.Repository
{
    public class MessageRepository : IRepository<IMessage>
    {
        public string DbName { get; }

        public MessageRepository(string dbname)
        {
            DbName = dbname;
        }

        public void Delete(IMessage entity)
        {
            using (var db = new LiteDatabase(DbName))
            {
                db.GetCollection<IMessage>().Delete(x => x.ID == entity.ID);
            }
        }

        public IQueryable<IMessage> GetAll()
        {
            using (var db = new LiteDatabase(DbName))
            {
                return db.GetCollection<IMessage>().FindAll().AsQueryable<IMessage>();
            }
        }
        public IMessage GetById(Guid id)
        {
            using (var db = new LiteDatabase(DbName))
            {
                return db.GetCollection<IMessage>().Find(x => x.ID == id).FirstOrDefault();
            }
        }

        public IMessage Save(IMessage entity)
        {
            using (var db = new LiteDatabase(DbName))
            {
                //_ = db.GetCollection<IMessage>().Insert(entity);
                return entity;
            }
        }
    }
}
