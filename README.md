# VESC設定手順書集

VESC Toolを使った設定と、VESCからのCANデータ送信手順をまとめています。対象は、VESCとCANの基本操作を理解している利用者です。

## 手順書を選ぶ

| やりたいこと | 手順書 | 検証状況 |
|---|---|---|
| モーター回転数から換算した車速をCANで定期送信する | [LispBMで車速をCANに定期送信する](docs/periodic-speed-can.md) | 公式ソース確認済み・実機未検証 |

## サンプルを使う

- [車速の定期送信スクリプト](examples/periodic-speed-can.lisp)
- [負の車速の格納形式を確認するテスト](examples/speed-payload-self-test.lisp)

手順書には、対象条件、設定値、受信データの読み方、確認方法、停止・復元方法を記載しています。サンプルのCAN IDは仮の割り当てです。利用するCANバスで重複しないことを確認してください。

不明点や修正案は、このリポジトリの[Issues](https://github.com/e-lab-pius-project/vesc-setup-guides/issues)に記載してください。報告にはVESCの機種、ファームウェア版、VESC Toolの版、該当する手順を添えてください。

最終更新: 2026-11-06
