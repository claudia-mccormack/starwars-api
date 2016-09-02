(function() {
  'use strict';

  angular.module('app').controller('swCtrl', function($scope, $http) {
    function setup() {
      $http.get('/api/v2/starwars.json').then(function(response) {
        $scope.starwars = response.data;
      });
    }

    setup();

    $scope.toggleChar = function(char) {
      starwar.charVisible = !starwar.charVisible;
    };

    $scope.addStarwar = function(starwar) {
      $http.post('/api/v2/starwars.json', starwar).success(function(response) {
        console.log(response.message);
        $scope.message = response.message;
        $scope.starwars.push(starwar);
        $scope.starwar = {};
      }).error(function(response) {
        $scope.errors = response.errors;
      });
    };

    $scope.toggleOrder = function(orderAttribute) {
      if (orderAttribute != $scope.orderAttribute) {
        $scope.isReverse = false;
      } else {
        $scope.isReverse = !$scope.isReverse;
      }
      $scope.orderAttribute = orderAttribute;
    };

    $scope.deleteStarwar = function(starwar) {
      var index = $scope.starwars.indexOf(starwar);
      $scope.starwars.splice(index, 1);
    };

  });
})();
