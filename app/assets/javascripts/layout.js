$(document).ready(function(){
  console.log('hi');
  // variables
  var ButtonIngredientNav = $('.ButtonIngredientNav');
  var StockList = $('.ingredients_stock');
  var ToBuyList = $('.ingredients_to_buy');
  var ButtonStock = $('.in_stock');
  var ButtonBuy = $('.buy');
  var IngredientList = $('.ingredients_list');
   // On load
  StockList.hide();
  ToBuyList.hide();
  // Event listener
  ButtonIngredientNav.on('click', ShowIngredientsPage)
  ButtonStock.on('click', ShowStockList);
  ButtonBuy.on('click', ShowBuyList);


  //Callbacks on ingredients

  function ShowIngredientsPage () {
    console.log('ShowIngredientsPage')
    // $(document).reload();
    StockList.hide();
    ToBuyList.hide();
  }

  function ShowStockList () {
    ToBuyList.hide();
    IngredientList.hide();
    StockList.show();
  }

  function ShowBuyList () {
    StockList.hide();
    IngredientList.hide();
    ToBuyList.show();
  }



  // Styling the nav
  $('nav li ul').hide().removeClass('fallback');
  $('nav li').hover(
    function () {
      $('ul', this).stop().slideDown(100);
    },
    function () {
      $('ul', this).stop().slideUp(100);
    }
  );
}) // End document ready
