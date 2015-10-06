/*
	My angular js
*/

// ------ brand website -------

angular.module("myapp",[]).controller("BrandController",function($scope){
	$scope.data = {};
	$scope.data.brand = "TraoDoiVat.DH12DT";
	$scope.data.admin = "Admin";
}).controller("RaoVatColtroller",function($scope){
	$scope.data = {};
	$scope.data.title = "Rao Vặt Mới Nhất";
}).controller("NewsController",function($scope){
	$scope.data = {};
	$scope.data.title = "Tin Tức Mới";
}).controller("TitleFooter",function($scope){
	$scope.data = {};
	$scope.data.copyright = "© 2015 TraoDoiVat.DH12DT";
	$scope.data.address = "Đại chỉ: trường ĐH Nông Lâm, phường Linh Trung, quận Thủ Đức, TP. Hồ Chí Minh";
	$scope.data.phone = "SĐT hỗ trợ: 0165 316 4732"
	$scope.data.email = "ntatvr@gmail.com"
})


// Code goes here



angular.module('plunker', ['ui.bootstrap'])
  .controller('contentCtrl', function ($scope) {
	  $http.get("http://localhost:8080/traodoivat/rest/listMember")
		.success(function(response) {
			$scope.listMember = response;
		    $scope.totalItems = response.length;		
		});
    
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
    
   $scope.pageCount = function () {
     return Math.ceil($scope.listMember.length / $scope.itemsPerPage);
   };

   $scope.$watch('currentPage + itemsPerPage', function() {
     var begin = (($scope.currentPage - 1) * $scope.itemsPerPage),
         end = begin + $scope.itemsPerPage;

     $scope.filteredListMember = $scope.listMember.slice(begin, end);
   });
});

