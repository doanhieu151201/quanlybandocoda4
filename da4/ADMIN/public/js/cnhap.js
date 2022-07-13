var app = angular.module('myapp',['angularUtils.directives.dirPagination']);
app.controller('mycontroller',function($scope,$http)
{
    var api = 'http://127.0.0.1:8000/api/cbillnhaps/';
$http({
    method: 'GET',
    url: 'http://127.0.0.1:8000/api/cbillnhaps'
}).success(function(response){
 $scope.cbillnhaps =response;
})
$scope.editClick = function(id) {
    $scope.id = id;
    if (id == 0) {
        $scope.modalTitle = "Them moi ban tin";
        // $scope.sanpham._token = CSRF_TOKEN;
        if($scope.cbillnhap){
            delete $scope.cbillnhap;
        }
    } else {
        $http({
            Method: "GET",
            url: "http://127.0.0.1:8000/api/cbillnhaps/" + id
        }).success(function(response) {
            $scope.cbillnhap = response;
            // $scope.sanpham._token = CSRF_TOKEN;
        });
        $scope.modalTitle = "Sua ban tin";
    }
    $('#modelId').modal('show');
}
$scope.currentPage = 1;
$scope.pageChangeHandler = function(num) {
        $scope.currentPage = num;
    };
$scope.pageSize = 3;
$scope.updateData = function() {
    var m = $scope.id==0?"POST":"PUT";
    var urll = $scope.id ==0?api:api+$scope.id;
    $http({
        method: m,
        url: urll,
        data: $scope.cbillnhap,
        headers: { 'Content-Type': 'application/json' }
    }).success(function(response) {
        console.log(response);
        location.reload();
    });
}

$scope.deleteClickk = function(id) {
    var xacnhan = confirm("Ban co muon xoa that khong?");
    if (xacnhan) {
    $http({
        method: "DELETE",
        url: "http://127.0.0.1:8000/api/cbillnhaps/" +id,
        data: $scope.cbillnhap,
        headers: { 'Content-Type': 'application/json' }
    }).success(function(response) {
        console.log(response);
        location.reload();
    }); 
    alert("Ban vua chon xoa id=" + id);
} else {
    alert("Ban da huy lenh xoa");
}
}
});