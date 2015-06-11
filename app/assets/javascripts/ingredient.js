$(document).ready(function(){
  console.log('hi');
  // variables
  var StockList = $('.ingredients_stock');
  var ToBuyList = $('.ingredients_to_buy');
  var ButtonStock = $('.in_stock');
  var ButtonBuy = $('.buy');
  var IngredientList = $('.ingredients_list');
   // On load
  StockList.hide();
  ToBuyList.hide();
  // Event listener
  ButtonStock.on('click', ShowStockList);
  ButtonBuy.on('click', ShowBuyList);


  //Functions

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









}) // End of document ready