using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(lostToDo.Startup))]
namespace lostToDo
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
