#pragma checksum "C:\Users\7327\source\repos\WebApplication3\WebApplication3\Views\Home\HavaDurumu.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "c56a3b8937b9b0eaaf2a88580f4fc0eabd42ae4d"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Home_HavaDurumu), @"mvc.1.0.view", @"/Views/Home/HavaDurumu.cshtml")]
[assembly:global::Microsoft.AspNetCore.Mvc.Razor.Compilation.RazorViewAttribute(@"/Views/Home/HavaDurumu.cshtml", typeof(AspNetCore.Views_Home_HavaDurumu))]
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"c56a3b8937b9b0eaaf2a88580f4fc0eabd42ae4d", @"/Views/Home/HavaDurumu.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"463d1c12e8fc14b2589daa67feec3183fea97611", @"/Views/_ViewImports.cshtml")]
    public class Views_Home_HavaDurumu : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            BeginContext(0, 2, true);
            WriteLiteral("\r\n");
            EndContext();
#line 2 "C:\Users\7327\source\repos\WebApplication3\WebApplication3\Views\Home\HavaDurumu.cshtml"
  
    ViewData["Title"] = "HavaDurumu";

#line default
#line hidden
            BeginContext(48, 39, true);
            WriteLiteral("\r\n<h1>HavaDurumu</h1>\r\n\r\nİstanbul: <img");
            EndContext();
            BeginWriteAttribute("src", " src=\"", 87, "\"", 106, 1);
#line 8 "C:\Users\7327\source\repos\WebApplication3\WebApplication3\Views\Home\HavaDurumu.cshtml"
WriteAttributeValue("", 93, ViewBag.icon, 93, 13, false);

#line default
#line hidden
            EndWriteAttribute();
            BeginContext(107, 11, true);
            WriteLiteral(" width=\"25\"");
            EndContext();
            BeginWriteAttribute("title", " title=\"", 118, "\"", 140, 1);
#line 8 "C:\Users\7327\source\repos\WebApplication3\WebApplication3\Views\Home\HavaDurumu.cshtml"
WriteAttributeValue("", 126, ViewBag.durum, 126, 14, false);

#line default
#line hidden
            EndWriteAttribute();
            BeginContext(141, 4, true);
            WriteLiteral(" /> ");
            EndContext();
            BeginContext(146, 16, false);
#line 8 "C:\Users\7327\source\repos\WebApplication3\WebApplication3\Views\Home\HavaDurumu.cshtml"
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
