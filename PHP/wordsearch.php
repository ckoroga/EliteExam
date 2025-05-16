<?php

function findTargetIndices(array $words, string $target): array {
    $indices = [];

    foreach ($words as $index => $word) {
        if ($word === $target) {
            $indices[] = $index;
        }
    }

    return $indices;
}

// Example usage
$words = ["ChrIstine", "KYliE", "KYLIE", "ChrIstine", "Oroga", "OroGa", "ADU", "aDU"];
$target = "ChrIstine";

$result = findTargetIndices($words, $target);
echo " " . implode(", ", $result) . "" . PHP_EOL;
