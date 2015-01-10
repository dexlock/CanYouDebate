<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<div style="margin: 0px -10px 0px -10px;">
	<div class="container-fluid"
		style="background-color: #333; padding-bottom: 10px; text-align: center;">
		<div class="row" style="margin: 20px">

			<div class="col-md-6 col-md-offset-3">

				<h3 style="color: #7e7e7e;">About the website</h3>
				<hr>
			</div>
		</div>
		<div class="row">
			<div class="col-md-3" style="text-align: center">

				<div class="center">
					<h4 style="color: #7e7e7e;">Reach Us</h4>
					<ul class="uList" style="text-align: left; padding-left: 68px;">
						<li>Salt Lake City</li>
						<li>Kolkata 700091</li>
						<li>West Bengal</li>
					</ul>
				</div>
			</div>

			<div class="col-md-4  col-md-offset-1">
				<h4 style="color: #7e7e7e;">Subscribe for Newsletter</h4>

				<input type="text"
					onfocus="if(this.value=='you@youremail.com'){this.value=''};"
					style="background-color: #333; text-align: center; margin-left: 80px;"
					class="form-control"
					onblur="if(this.value==''){this.value='you@youremail.com'};"
					onkeyup="if(event.keyCode == 13){send_newsletter();}"
					value="you@youremail.com">

				<h5 style="padding-right: 25px;">Sitemap</h5>



			</div>
			<div class="col-md-4" style="text-align: center">
				<h4>DexLock Inc.</h4>
				<ul class="uList" style="text-align: right;padding-right: 159px;">
					<li><a href=""> About the Company </a></li>
					<li><a href=""> About the Developers </a></li>
					<li><a href=""> Read DexLock Blog </a></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="container-fluid"
		style="background-color: #222222; margin: 0px 0px -10px -10px;">
		<div class="row" style="text-align: center; padding: 10px;">
			<div class="col-md-4"></div>
			<div class="col-md-4">



				<p>

					<a href=""><img width="26" height="25" border="0"
						alt="Facebook"
						src="${contextPath}/jsp/layout/images/i-facebook.png"> </a> <a
						href=""><img width="26" height="25" border="0" alt="Twitter"
						src="${contextPath}/jsp/layout/images/i-twitter.png"> </a>
				</p>

				<p>
					All Rights Reserved © 2014 Dexlock Inc. <a
						href="${contextPath}/HomePage">canyoudebate.com</a> <a href="#">Privacy</a>
					<a href="#">Terms</a>
				</p>
			</div>

			<div class="col-md-4"></div>
		</div>
	</div>
</div>