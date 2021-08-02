# eosio.token contract with inline actions to syncronize a Telos Decide token

## Notes

* Must have @eosio.code permission on @active so it can inline to Telos Decide

* Create has additional parameters (title, description, icon) which are passed to Telos Decide for the voting token

* For each token that will be created, the token contract must have a balance of TLOS equal to the fee to create a treasury in decide (for fees see https://telos.bloks.io/account/telos.decide?loadContract=true&tab=Tables&account=telos.decide&scope=telos.decide&limit=100&table=config)

* Anyone who wishes to receive this token via transfer must have called telos.decide::regvoter to open a balance in the voting token table and pay for the ram.
  * `decide::regvoter(name voter, symbol treasury_symbol, optional<name> referrer)`
  * possibly add support so the token contract can be configured to pay for this ram?  If the token contract includes itself as `optional<name> referrer` in `regvoter` then it will pay for the ram
  * or the ui can put a regvoter in front of the transfer action maybe?
