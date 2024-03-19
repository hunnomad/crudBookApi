<?php
include "include/db_auth.php";

try {
    $pdo = new PDO("pgsql:host=$host;dbname=$dbname", $username, $password);

    if ($_SERVER['REQUEST_METHOD'] === 'GET') {
        // GET (Search by string or ID)
        if (isset($_GET['search'])) {
            $search = $_GET['search'];
            $query = $pdo->prepare("SELECT * FROM books WHERE author LIKE ? OR title LIKE ? OR isbn LIKE ? OR summary LIKE ?");
            $query->execute(["%$search%", "%$search%", "%$search%", "%$search%"]);
            $result = $query->fetchAll(PDO::FETCH_ASSOC);

            header("Content-type: application/json; charset=utf-8");
            echo json_encode($result);
        } elseif (isset($_GET['id'])) {
            $id = $_GET['id'];
            $query = $pdo->prepare("SELECT * FROM books WHERE id = ?");
            $query->execute([$id]);
            $result = $query->fetch(PDO::FETCH_ASSOC);

            header("Content-type: application/json; charset=utf-8");
            echo json_encode($result);
        } else {
            $query = $pdo->query("SELECT * FROM books");
            $result = $query->fetchAll(PDO::FETCH_ASSOC);

            header("Content-type: application/json; charset=utf-8");
            echo json_encode($result);
        }
    } elseif ($_SERVER['REQUEST_METHOD'] === 'POST') {
        // POST (CREATE)
        $data = json_decode(file_get_contents("php://input"), true);
        $query = $pdo->prepare("INSERT INTO books (author, title, publish_date, isbn, summary, price, on_store) VALUES (?, ?, ?, ?, ?, ?, ?)");
        $query->execute([$data['author'], $data['title'], $data['publish_date'], $data['isbn'], $data['summary'], $data['price'], $data['on_store']]);
        echo "Added NEW Record.";
    } elseif ($_SERVER['REQUEST_METHOD'] === 'PUT') {
        // PUT (Update)
        parse_str(file_get_contents("php://input"), $data);
        $id = $data['id'];
        unset($data['id']);
        $columns = array_keys($data);
        $values = array_values($data);
        $query = $pdo->prepare("UPDATE books SET " . implode(' = ?, ', $columns) . " = ? WHERE id = ?");
        $query->execute(array_merge($values, [$id]));
        echo "UPDATED Successfull.";
    } elseif ($_SERVER['REQUEST_METHOD'] === 'DELETE') {
        // DELETE 
        parse_str(file_get_contents("php://input"), $data);
        $id = $data['id'];
        $query = $pdo->prepare("DELETE FROM books WHERE id = ?");
        $query->execute([$id]);
        echo "DELETED Successfull.";
    } else {
        http_response_code(405);
        echo "Hiba: Nem támogatott művelet.";
    }
} catch (PDOException $e) {
    die("ERROR: Can't connect to database: " . $e->getMessage());
}
