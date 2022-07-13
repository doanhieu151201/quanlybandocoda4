var app = angular.module('myapp', ['angularUtils.directives.dirPagination']);
app.controller('mycontroller', function($scope, $http) {
    var api ='http://127.0.0.1:8000/api/lsps/';
    $http({
        Method: "GET",
        url: "http://127.0.0.1:8000/api/lsps/"
    }).success(function(response) {
        console.log(response);
        $scope.lsps = response;
    });
    $scope.editClick = function(id) {
       
        $scope.id = id;
        if (id == 0) {
            $scope.modalTitle = "Them moi ban tin";
            // $scope.sanpham._token = CSRF_TOKEN;
            if($scope.response){
                delete lsp.response;
            }
        } else {

            $http({
                Method: "GET",
                url: "http://127.0.0.1:8000/api/lsps/" + id
            }).success(function(response) {
                $scope.lsp = response;
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
        var m = $scope.id == 0?"POST":"PUT";
        var urll = $scope.id == 0?api:api+$scope.id;
        $http({
            method: m,
            url: urll,
            data: $scope.lsp,
            headers: { 'Content-Type': 'application/json' }
        }).success(function(response) {
            console.log(response);
            location.reload();
        });
    }
    $scope.deleteClick = function(id) {
        var xacnhan = confirm("Ban co muon xoa that khong?");
        if (xacnhan) {
        $http({
            method: "DELETE",
            url: "http://127.0.0.1:8000/api/lsps/" +id,
            data: $scope.lsp,
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
    const fileUpload = document.querySelector("#file-upload");
    fileUpload.addEventListener("change", (e) => {
        const files = e.target.files;
        document.getElementById('Anh').innerHTML = `<img src="/upload/danhmuc/`+ files[0].name +`" alt="Ảnh" style="width:100%;height:100%">`;
        for(const file of files) {
            const {name, type, size, lastModified } = file;
            // Làm gì đó với các thông tin trên
            $scope.lsp.image = file.name;
            document.getElementById('Anh').innerHTML = `<img src="/upload/danhmuc/`+ file.name +`" alt="Ảnh" style="width:100%;height:100%">`;
        };
    });
});