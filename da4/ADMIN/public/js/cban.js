var app = angular.module('myapp',['angularUtils.directives.dirPagination']);
app.controller('mycontroller',function($scope,$http)
{
    var api = 'http://127.0.0.1:8000/api/cbillbans/';
$http({
    method: 'GET',
    url: 'http://127.0.0.1:8000/api/cbillbans'
}).success(function(response){
 $scope.cbillbans =response;
})

$http({
    Method: "GET",
    url: "http://127.0.0.1:8000/api/khachs"
}).success(function(response) {
    console.log(response);
    $scope.khachs = response;
});

$http({
    Method: "GET",
    url: "http://127.0.0.1:8000/api/billbans"
}).success(function(response) {
    console.log(response);
    $scope.bans = response;
  localStorage.setItem('items',JSON.stringify($scope.bans));

});




$scope.editClick = function(id) {
    $scope.id = id;
    if (id == 0) {
        $scope.modalTitle = "Them moi ban tin";
        // $scope.sanpham._token = CSRF_TOKEN;
        if($scope.cbillban){
            delete $scope.cbillban;
        }
    } else {
        $http({
            Method: "GET",
            url: "http://127.0.0.1:8000/api/cbillbans/" + id
        }).success(function(response) {
            $scope.cbillban = response;
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
        data: $scope.cbillban,
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
        url: "http://127.0.0.1:8000/api/cbillbans/" +id,
        data: $scope.cbillban,
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

$scope.show = function(id) {
    $scope.arrproduct =[];
    // $scope.arrsl =[];
    // $scope.arrtong =[];
        $scope.id = id;
        $http({
            Method: "GET",
            url: "http://127.0.0.1:8000/api/cbillbans/"+id,
        }).success(function(response) {
            $scope.cbanss = response;
            $scope.arrproduct =  $scope.cbanss.sp.split(':');
            // $scope.arrsl = $scope.cbanss.sp.split(':');
            // $scope.arrtong = $scope.cbanss.tonggia.split(':');
        });
        $('#detail_bill').modal('show');
        
    }
});