using Parbat.Core.API.Client;
using Parbat.Core.Web.Models;

var builder = WebApplication.CreateBuilder(args);
ViewHelper.BASE_URL = "https://localhost:44393";
// Add services to the container.
builder.Services.AddControllersWithViews();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");
app.MapControllerRoute(
    name: "org",
    pattern: "{controller=OrgUnitType}/{action=Index}/{id?}");

app.Run();
