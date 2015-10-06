<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="js/angular.min.js"></script>
<script src="js/ui-bootstrap-tpls.js"></script>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-theme.min.css" rel="stylesheet">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap-theme.css" rel="stylesheet">
</head>
<body>

	<div ng-app="myApp" ng-controller="customersCtrl">

		<form>
			<div class="form-group">
				<div class="input-group">
					<div class="input-group-addon">
						<i class="fa fa-search"></i>
					</div>
					<input type="text" class="form-control"
						placeholder="Search by Name" ng-model="searchName">
				</div>
			</div>
		</form>

		<table class="table table-bordered">
			<thead>
				<tr>
					<th>ID</th>
					<th>
						<a href="#" ng-click="sortType = 'name'; sortReverse = !sortReverse">Name</a>
					</th>
					<th>Birthday</th>
					<th>Sex</th>
					<th>Phone</th>
					<th>Email</th>
					<th>Address</th>
					<th>Avatar</th>
					<th>Joindate</th>
					<th>Introduce</th>
					<th>Star</th>
					<th>ACtivity</th>
				</tr>
			</thead>
			<tbody>
				<tr ng-repeat="member in filteredListMember | orderBy:sortType:sortReverse | filter:searchName">
					<td>{{member.memID}}</td>
					<td>{{member.name}}</td>
					<td>{{member.birthday}}</td>
					<td>{{member.sex}}</td>
					<td>{{member.phone}}</td>
					<td>{{member.email}}</td>
					<td>{{member.address}}</td>
					<td>{{member.avatar}}</td>
					<td>{{member.joinDate}}</td>
					<td>{{member.introduce}}</td>
					<td>{{member.star}}</td>
					<td>{{member.activity}}</td>
				</tr>
			</tbody>
		</table>
		<pagination total-items="totalItems" ng-model="currentPage"
			max-size="maxSize" class="pagination" boundary-links="true"
			rotate="false" num-pages="numPages"></pagination>
		<p>
			total Items: {{totalItems}}<br /> Items per page: {{itemsPerPage}}<br />
			Current Page: {{currentPage}}
		</p>
	</div>

	<script type="text/javascript">
		var app = angular.module('myApp', [ 'ui.bootstrap' ]);
		app
				.controller(
						'customersCtrl',
						function($scope, $http) {

							$http
									.get(
											"http://localhost:8080/traodoivat/rest/listMember")
									.success(function(response) {
										$scope.listMember = response;
										$scope.totalItems = response.length;
										console.log(response)
									});
							//sort:
							//$scope.sortType = "name" // set the default sort name
							//$scope.sortReverse = false;
							//$scope.searchName = '' // set the default search/filte name

							$scope.itemsPerPage = 5
							$scope.currentPage = 1;

							// $scope.setPage = function (pageNo) {
							//   $scope.currentPage = pageNo;
							// };

							// $scope.pageChanged = function() {
							//   console.log('Page changed to: ' + $scope.currentPage);
							// };

							$scope.maxSize = 5;
							$scope.bigTotalItems = 175;
							$scope.bigCurrentPage = 1;

							$scope.pageCount = function() {
								return Math.ceil($scope.listMember.length
										/ $scope.itemsPerPage);
							};

							$scope
									.$watch(
											'currentPage + itemsPerPage',
											function() {
												var begin = (($scope.currentPage - 1) * $scope.itemsPerPage), end = begin
														+ $scope.itemsPerPage;

												$scope.filteredListMember = $scope.listMember
														.slice(begin, end);
											});
						});
	</script>
</body>
</html>