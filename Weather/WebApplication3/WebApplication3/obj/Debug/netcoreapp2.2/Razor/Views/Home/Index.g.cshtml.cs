#pragma checksum "C:\Users\7327\source\repos\WebApplication3\WebApplication3\Views\Home\Index.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "fa8862d7101d7010466c827fe7192e866347959e"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Home_Index), @"mvc.1.0.view", @"/Views/Home/Index.cshtml")]
[assembly:global::Microsoft.AspNetCore.Mvc.Razor.Compilation.RazorViewAttribute(@"/Views/Home/Index.cshtml", typeof(AspNetCore.Views_Home_Index))]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#line 1 "C:\Users\7327\source\repos\WebApplication3\WebApplication3\Views\_ViewImports.cshtml"
using WebApplication3;

#line default
#line hidden
#line 2 "C:\Users\7327\source\repos\WebApplication3\WebApplication3\Views\_ViewImports.cshtml"
using WebApplication3.Models;

#line default
#line hidden
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"fa8862d7101d7010466c827fe7192e866347959e", @"/Views/Home/Index.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"463d1c12e8fc14b2589daa67feec3183fea97611", @"/Views/_ViewImports.cshtml")]
    public class Views_Home_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            BeginContext(0, 1, true);
            WriteLiteral("a");
            EndContext();
#line 1 "C:\Users\7327\source\repos\WebApplication3\WebApplication3\Views\Home\Index.cshtml"
   
    ViewData["Title"] = "Home Page";

#line default
#line hidden
            BeginContext(43, 311, true);
            WriteLiteral(@"
    <div class=""text-center"">
        <h1 class=""display-4"">Welcome</h1>
        <p>Learn about <a href=""https://docs.microsoft.com/aspnet/core"">building Web apps with ASP.NET Core</a>.</p>
        <p id=""paragraph""  ></p>
    </div>
<div class=""row"">
    <div class=""col-sm-12 text-center jumbotron"">
        ");
            EndContext();
            BeginContext(355, 50, false);
#line 12 "C:\Users\7327\source\repos\WebApplication3\WebApplication3\Views\Home\Index.cshtml"
   Write(Html.ActionLink("Hava Durumunu Gör", "HavaDurumu"));

#line default
#line hidden
            EndContext();
            BeginContext(405, 33, true);
            WriteLiteral("\n    </div>\n</div>\nİstanbul: <img");
            EndContext();
            BeginWriteAttribute("src", " src=\"", 438, "\"", 457, 1);
#line 15 "C:\Users\7327\source\repos\WebApplication3\WebApplication3\Views\Home\Index.cshtml"
WriteAttributeValue("", 444, ViewBag.icon, 444, 13, false);

#line default
#line hidden
            EndWriteAttribute();
            BeginContext(458, 11, true);
            WriteLiteral(" width=\"25\"");
            EndContext();
            BeginWriteAttribute("title", " title=\"", 469, "\"", 491, 1);
#line 15 "C:\Users\7327\source\repos\WebApplication3\WebApplication3\Views\Home\Index.cshtml"
WriteAttributeValue("", 477, ViewBag.durum, 477, 14, false);

#line default
#line hidden
            EndWriteAttribute();
            BeginContext(492, 4, true);
            WriteLiteral(" /> ");
            EndContext();
            BeginContext(497, 16, false);
#line 15 "C:\Users\7327\source\repos\WebApplication3\WebApplication3\Views\Home\Index.cshtml"
                                                                   Write(ViewBag.sicaklik);

#line default
#line hidden
            EndContext();
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<dynamic> Html { get; private set; }
    }
}
#pragma warning restore 1591
