app.controller('ArticlesCtrl', ['$scope','$location','Article', 'action','paginationService', function ($scope,$location,Article, action,paginationService) {
    var ctrl = this;
    // Код отработает только для  '/posts'


    action('index', function(response){
      //ctrl.articles = Article.query({page: 1}); 
      $scope.articles = Article.query({page: 1}) 

      $scope.users= response;
      $scope.totalitems = $scope.users.length;

      //$scope.showMore = (secondPage) ->
        //i = 0
        //while i < secondPage.length
          //$scope.articles.push(secondPage[i])
          //i++
        //$scope.nextPage++
        //console.log("nextpage" + $scope.nextPage)   
    });


    // Вызовется для паттерна '/posts/:id'
    action('show', function (params){
      ctrl.article = Article.get({id: params.id});
    });

    // Только для '/posts/new'
    action('new', function(){
      ctrl.article = Article.new();
      // Присваивание каллбека создания, который будет вызван автоматически при сабмите формы. См. ниже.
      ctrl.save = Article.create;
    });

    // Для паттерна '/posts/:id/edit'
    action('edit', function (params){
      ctrl.article = Article.edit({id: params.id});
      // Аналогичное присваивание для каллбека обновления
      ctrl.save = Article.update;
    })

    // Общий код. Вызовется для двух методов edit и new.
    action(['edit', 'new'], function(){
      //
    })

    action(['index', 'edit', 'show'], function () {
      ctrl.destroy = function (article) {
        Article.destroy({id: article.id}, function () {
          ctrl.articles = _.select(ctrl.articles, function (_article) {
            return _article.id != article.id
          })
        })
      }
    })

    // Так же внутри ресурса routes.rb можно создать свой кастомный метод. Вызовется для: '/posts/some_method'
    action('some_method', function(){
      //
    })

    // etc
  }])