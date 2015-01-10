<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div style="text-align: center">
					<h2>Debate</h2>

					<p>
						Select topics from the list. Plenty of categories to choose from.
						<span class="text-muted">Favourite SuperHero Cars TV Series
						</span>
					<p>
						<a role="button" href="${contextPath}/DebateHome" class="btn btn-default">View details
							»</a>
					</p>
				</div>
			</div>

			<div class="col-md-4">
				<div style="text-align: center">
					<h2>
						<a href="">Discuss</a>
					</h2>

					<p>
						Discuss about just anything. See where your friends are
						discussing. <span class="text-muted">Chhose your own topic</span>
					<p>
						<a role="button" href="#" class="btn btn-default">View details
							»</a>
					</p>
				</div>
			</div>

			<div class="col-md-4">
				<div style="text-align: center">
					<h2>
						<a href="">Opinion Poll</a>
					</h2>

					<p>
						Give opinion by polling. Raise your voice <span class="text-muted">Add
							comment against your vote</span>
					<p>
						<a role="button" href="#" class="btn btn-default">View details
							»</a>
					</p>
				</div>
			</div>
		</div>


	</div>