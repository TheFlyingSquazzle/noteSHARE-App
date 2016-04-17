using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(NoteShareApp.Startup))]
namespace NoteShareApp
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
