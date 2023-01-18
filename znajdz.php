<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kwiaty</title>
    <link rel="stylesheet" href="styl.css">
</head>
<body>
    <section id="baner">
        <h1>Moje kwiaty</h1>
    </section>

    <section id="main">
        <section id="lewy-panel">
            <h3>Kwiaty dla Ciebie!</h3>
            <a href="https://www.swiatkwiatow.pl/">Rozpoznaj kwiaty</a>
            <a href="znajdz.php">Znajdź kwiaciarnie</a>
            <img src="gozdzik.jpg" alt="Goździk" id="gozdzik-lewy">
        </section>
        
        <section id="prawy-panel">
            <img src="gerbera.jpg" alt="Gerbera">
            <img src="gozdzik.jpg" alt="Goździk">
            <img src="roza.jpg" alt="Róża">
            <p>Podaj miejscowość w której poszukujesz kwiaciarni</p>

            <form action="znajdz.php" method="post">
                <input type="text" name="data">
                <button name="check">SPRAWDŹ</button>
            </form>
            
        <?php 
            $conn = mysqli_connect('localhost','root','','kwiaciarnia');

            $data = $_POST['data'];
            $btn = $_POST['check'];

            $query = "SELECT nazwa, ulica FROM `kwiaciarnie` WHERE miasto LIKE '$data'";

            $wynik = mysqli_query($conn, $query);

            while($row = mysqli_fetch_assoc($wynik)){
                echo "<p> $row[nazwa], $row[ulica] </p>";
            }

            mysqli_close($conn);
        ?>
        
        </section>
    </section>

    <section id="stopka">
        <h3>Stronę opracował essaczmen</h3>
    </section>
</body>
</html>