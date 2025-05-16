<?php

function markIslands(array $grid): array {
    $rows = count($grid);
    $cols = count($grid[0]);

    for ($i = 0; $i < $rows; $i++) {
        for ($j = 0; $j < $cols; $j++) {
            if ($grid[$i][$j] === 1) {
                floodFill($grid, $i, $j, $rows, $cols);
            }
        }
    }

    return $grid;
}

function floodFill(array &$grid, int $i, int $j, int $rows, int $cols): void {
    if ($i < 0 || $i >= $rows || $j < 0 || $j >= $cols || $grid[$i][$j] !== 1) {
        return;
    }

    $grid[$i][$j] = 'x'; // Replace 1 with 'x'

    for ($dx = -1; $dx <= 1; $dx++) {
        for ($dy = -1; $dy <= 1; $dy++) {
            if ($dx !== 0 || $dy !== 0) {
                floodFill($grid, $i + $dx, $j + $dy, $rows, $cols);
            }
        }
    }
}

function printGrid(array $grid): void {
    foreach ($grid as $row) {
        foreach ($row as $cell) {
            echo ($cell === 0 ? '~' : $cell);
        }
        echo PHP_EOL;
    }
}

// Test Case
$matrix = [
    [1, 1, 0, 1],
    [0, 1, 0, 0],
    [0, 0, 1, 1],
    [1, 1, 1, 0]
];

$marked = markIslands($matrix);
printGrid($marked);
