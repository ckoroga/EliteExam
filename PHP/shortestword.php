<?php
function shortestWordLength($input) {
    $words = explode(" ", $input);
    $shortest = strlen($words[0]);

    foreach ($words as $word) {
        $length = strlen($word);
        if ($length < $shortest) {
            $shortest = $length;
        }
    }

    return $shortest;
}

echo shortestWordLength("TRUE FRIENDS ARE ME AND YOU") . "\n";
echo shortestWordLength("I AM THE LEGENDARY VILLAIN") . "\n";
?>
