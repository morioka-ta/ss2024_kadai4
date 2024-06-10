#!/bin/bash

# gcd.shスクリプトを読み込む
source ./gcd.sh

# テストケース
test_cases=(
    "48 18 6"
    "56 98 14"
    "101 103 1"
    "20 30 10"
    "270 192 6"
)

# テストケースを実行する関数
function run_test() {
    local a=$1
    local b=$2
    local expected=$3

    local result=$(gcd $a $b)
    if [ "$result" -eq "$expected" ]; then
        echo "入力 $a と $b に対するテストに合格しました。期待値: $expected, 実際の値: $result"
    else
        echo "入力 $a と $b に対するテストに失敗しました。期待値: $expected, 実際の値: $result"
    fi
}

# すべてのテストケースを実行
for test_case in "${test_cases[@]}"; do
    run_test $test_case
done
									    
