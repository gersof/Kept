using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(KeptWeb.Startup))]
namespace KeptWeb
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
