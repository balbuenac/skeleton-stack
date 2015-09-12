angular.module("skeleton", [])
    .controller("skeleton-controller", function($scope, $http) {
        $scope.helloTo = {};
        $scope.helloTo.title = "World, AngularJS";

        $http.get('http://localhost:4567/books').
            success(function(data) {
               $scope.books = data;
            }
        );
} );
