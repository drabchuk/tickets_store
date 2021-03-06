<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Auto-Completion using AJAX</title>
  <link rel="stylesheet" type="text/css" href="styles.css">
  <link rel="stylesheet" type="text/css" href="reset.css">
  <script type="text/javascript" src="javascript.js"></script>
</head>
<body onload="init()">
<div class="menu">
  <ul>
    <li><a href="Index.html">Главная</a></li>
    <li><a href="Reservations.html">Бронирование</a></li>
    <li><a href="Info.html">Информация</a></li>
    <li><a href="Contacts.html">Связь</a></li>
  </ul>
</div>
<div class="main">
  <br>
  <div id="logo">
    <center><img src="img/logo.png" width="180" height="174"></center>
  </div>
  <div class="step">
    <div id="#triangle" class="step_one" style="background: #32CD32;">
      <center><p>1. Выбор рейса, даты</p></center>
    </div>
    <div class="step_two">
      <center><p>2. Бронирование</p></center>
    </div>
    <div class="step_three">
      <center><p>3. Покупка</p></center>
    </div>
  </div>
  <div class="frame">
    <center><%--@declare id="state_list"--%>


        <input type="text" class="input"  list="cities" placeholder="Откуда" required max="64" id="from"
               onkeyup="doCompletion(this.id);">

  <datalist id="cities">
  </datalist>
   <input type="text" class="input" placeholder="Куда" required max="64" id="to" onkeyup="doCompletion(this.id);" list="cities">

  <input type="date" class="input "id="date"><script>document.getElementById('date').valueAsDate = new Date();</script>
  <input type="submit" class="button" value="Поиск" onClick="search_trips()">
></center>
  </div>

        <table id="complete-table" />
      </td>
    </tr>
    </tbody>
  </table>

  <center><div class="wrapper" id="tripsTable">
    <div class="table">
      <div class="row_info">
        <div class="col date">
          <b>Дата:</b>
        </div>

        <div class="col c">
          <b>Отправление</b>
        </div>

        <div class="col date">
          <b>Дата:</b>
        </div>

        <div class="col c">
          <b>Прибытие</b>
        </div>

        <div class="col time_in_way">
          <b>Время в пути</b>
        </div>

        <div class="col c">
          <b>Стоимость</b>
        </div>
      </div>
      <div class="row">
        <div class="col date">
          <b>21:23</b>
          <h3>2 сентября</h3>
        </div>

        <div class="col c">
          <h2>Львов Центральный АВ, ул. Стрийская, 109</h2>
        </div>

        <div class="col date">
          <b>14:23</b>
          <h3>3 сентября</h3>
        </div>

        <div class="col c">
          <h2>Краков, RDA , ul. Bosacka 18</h2>
        </div>

        <div class="col time_in_way">
          <h2>10 ч. 2 м.</h2>
          <h2>прямой рейс</h2>
        </div>

        <div class="col c">
          <h2><b>100$</b></h2>
        </div>
      </div>
      <div class="row">
        <div class="col date">
          <b>21:23</b>
          <h3>2 сентября</h3>
        </div>

        <div class="col c">
          <h2>Львов Центральный АВ, ул. Стрийская, 109</h2>
        </div>

        <div class="col date">
          <b>14:23</b>
          <h3>3 сентября</h3>
        </div>

        <div class="col c">
          <h2>Краков, RDA , ul. Bosacka 18</h2>
        </div>

        <div class="col time_in_way">
          <h2>10 ч. 2 м.</h2>
          <h2>прямой рейс</h2>
        </div>

        <div class="col c">
          <h2><b>100$</b></h2>
        </div>
      </div>
      <div class="row">
        <div class="col date">
          <b>21:23</b>
          <h3>2 сентября</h3>
        </div>

        <div class="col c">
          <h2>Львов Центральный АВ, ул. Стрийская, 109</h2>
        </div>

        <div class="col date">
          <b>14:23</b>
          <h3>3 сентября</h3>
        </div>

        <div class="col c">
          <h2>Краков, RDA , ul. Bosacka 18</h2>
        </div>

        <div class="col time_in_way">
          <h2>10 ч. 2 м.</h2>
          <h2>прямой рейс</h2>
        </div>

        <div class="col c">
          <h2><b>100$</b></h2>
        </div>
      </div>
      <div class="row">
        <div class="col date">
          <b>21:23</b>
          <h3>2 сентября</h3>
        </div>

        <div class="col c">
          <h2>Львов Центральный АВ, ул. Стрийская, 109</h2>
        </div>

        <div class="col date">
          <b>14:23</b>
          <h3>3 сентября</h3>
        </div>

        <div class="col c">
          <h2>Краков, RDA , ul. Bosacka 18</h2>
        </div>

        <div class="col time_in_way">
          <h2>10 ч. 2 м.</h2>
          <h2>прямой рейс</h2>
        </div>

        <div class="col c">
          <h2><b>100$</b></h2>
        </div>
      </div>
      <div class="row">
        <div class="col date">
          <b>21:23</b>
          <h3>2 сентября</h3>
        </div>

        <div class="col c">
          <h2>Львов Центральный АВ, ул. Стрийская, 109</h2>
        </div>

        <div class="col date">
          <b>14:23</b>
          <h3>3 сентября</h3>
        </div>

        <div class="col c">
          <h2>Краков, RDA , ul. Bosacka 18</h2>
        </div>

        <div class="col time_in_way">
          <h2>10 ч. 2 м.</h2>
          <h2>прямой рейс</h2>
        </div>

        <div class="col c">
          <h2><b>100$</b></h2>
        </div>
      </div>
      <div class="row">
        <div class="col date">
          <b>21:23</b>
          <h3>2 сентября</h3>
        </div>

        <div class="col c">
          <h2>Львов Центральный АВ, ул. Стрийская, 109</h2>
        </div>

        <div class="col date">
          <b>14:23</b>
          <h3>3 сентября</h3>
        </div>

        <div class="col c">
          <h2>Краков, RDA , ul. Bosacka 18</h2>
        </div>

        <div class="col time_in_way">
          <h2>10 ч. 2 м.</h2>
          <h2>прямой рейс</h2>
        </div>

        <div class="col c">
          <h2><b>100$</b></h2>
        </div>
      </div>
      <div class="row">
        <div class="col date">
          <b>21:23</b>
          <h3>2 сентября</h3>
        </div>

        <div class="col c">
          <h2>Львов Центральный АВ, ул. Стрийская, 109</h2>
        </div>

        <div class="col date">
          <b>14:23</b>
          <h3>3 сентября</h3>
        </div>

        <div class="col c">
          <h2>Краков, RDA , ul. Bosacka 18</h2>
        </div>

        <div class="col time_in_way">
          <h2>10 ч. 2 м.</h2>
          <h2>прямой рейс</h2>
        </div>

        <div class="col c">
          <h2><b>100$</b></h2>
        </div>
      </div>
      <div class="row">
        <div class="col date">
          <b>21:23</b>
          <h3>2 сентября</h3>
        </div>

        <div class="col c">
          <h2>Львов Центральный АВ, ул. Стрийская, 109</h2>
        </div>

        <div class="col date">
          <b>14:23</b>
          <h3>3 сентября</h3>
        </div>

        <div class="col c">
          <h2>Краков, RDA , ul. Bosacka 18</h2>
        </div>

        <div class="col time_in_way">
          <h2>10 ч. 2 м.</h2>
          <h2>прямой рейс</h2>
        </div>

        <div class="col c">
          <h2><b>100$</b></h2>
        </div>
      </div>

      <div class="row">
        <div class="col date">
          <b>21:23</b>
          <h3>2 сентября</h3>
        </div>

        <div class="col c">
          <h2>Львов Центральный АВ, ул. Стрийская, 109</h2>
        </div>

        <div class="col date">
          <b>14:23</b>
          <h3>3 сентября</h3>
        </div>

        <div class="col c">
          <h2>Краков, RDA , ul. Bosacka 18</h2>
        </div>

        <div class="col time_in_way">
          <h2>10 ч. 2 м.</h2>
          <h2>прямой рейс</h2>
        </div>

        <div class="col c">
          <h2><b>100$</b></h2>
        </div>
      </div>

      <div class="row">
        <div class="col date">
          <b>21:23</b>
          <h3>2 сентября</h3>
        </div>

        <div class="col c">
          <h2>Львов Центральный АВ, ул. Стрийская, 109</h2>
        </div>

        <div class="col date">
          <b>14:23</b>
          <h3>3 сентября</h3>
        </div>

        <div class="col c">
          <h2>Краков, RDA , ul. Bosacka 18</h2>
        </div>

        <div class="col time_in_way">
          <h2>10 ч. 2 м.</h2>
          <h2>прямой рейс</h2>
        </div>

        <div class="col c">
          <h2><b>100$</b></h2>
        </div>
      </div>
    </div>
  </div></center>
</div>
<div class="footer">
  <div class="footer_text">
    <p>Сайт 2015 (С)</p>
  </div>
</div>
</body>
</html>
