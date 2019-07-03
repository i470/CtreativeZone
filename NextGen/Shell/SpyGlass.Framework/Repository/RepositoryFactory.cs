using SpyGlass.Framework.Model;

namespace SpyGlass.Framework.Repository
{
    public class RepositoryFactory
    {
        public IRepository<IMessage> GetMessageRepo()
        {
            return new MessageRepository(@"Messages.db");
        }
    }
}
