<%@ Page Title="" Language="C#" MasterPageFile="~/UCMP/MyMaster.master" AutoEventWireup="true" CodeFile="ChangeMaster.aspx.cs" Inherits="UCMP_ChangeMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
			<div class="header">
				<div>
					<asp:Image ID="LogoImage" ImageUrl="images/logo.png" runat="server" />
					<asp:Button ID="Button1" runat="server" Text="ChangeImage" OnClick="Button1_Click" />
					<h1>SOYUZ TMA-M</h1>
					<h2>SPACECRAFT</h2>
					<a href="blog.html" class="more">Read More</a>
					<h3>FEATURED PROJECTS</h3>
					<ul>
						<li>
							<a href="projects.html"><img src="images/project-image1.jpg" alt=""></a>
						</li>
						<li>
							<a href="projects.html"><img src="images/project-image2.jpg" alt=""></a>
						</li>
						<li>
							<a href="projects.html"><img src="images/project-image3.jpg" alt=""></a>
						</li>
						<li>
							<a href="projects.html"><img src="images/project-image4.jpg" alt=""></a>
						</li>
					</ul>
				</div>
			</div>
			<div class="body">
				<div>
					<h1>OUR MISSION</h1>
					<p>This website template has been designed by Free Website Templates for you, for free. You can replace all this text with your own text.</p>
				</div>
			</div>
			<div class="footer">
				<div>
					<ul>
						<li>
							<h1>FEATURED VIDEO</h1>
							<a href="blog.html"><img src="images/mars-rover.jpg" alt=""><span></span></a>
						</li>
						<li>
							<h1>LATEST BLOG</h1>
							<ul>
								<li>
									<a href="blog.html"><img src="images/finding-planet.jpg" alt=""></a>
									<h1>FINDING PLANET X-123</h1>
									<span>FEBRUARY 6, 2023</span>
									<a href="blog.html" class="more">Read More</a>
								</li>
								<li>
									<a href="blog.html"><img src="images/new-satellitedish.jpg" alt=""></a>
									<h1>NEW SATELLITE DISH</h1>
									<span>FEBRUARY 3, 2023</span>
									<a href="blog.html" class="more">Read More</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
</asp:Content>

