export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'add' : IDL.Func([IDL.Nat, IDL.Nat], [IDL.Int], []),
    'clear_counter' : IDL.Func([], [IDL.Nat], []),
    'days_to_second' : IDL.Func([IDL.Nat], [IDL.Int], []),
    'divide' : IDL.Func([IDL.Nat, IDL.Nat], [IDL.Bool], []),
    'get_counter' : IDL.Func([], [IDL.Nat], []),
    'increment_counter' : IDL.Func([], [IDL.Nat], []),
    'is_even' : IDL.Func([IDL.Nat], [IDL.Bool], []),
    'maximum' : IDL.Func([IDL.Vec(IDL.Nat)], [IDL.Nat], []),
    'remove_from_array' : IDL.Func(
        [IDL.Vec(IDL.Nat), IDL.Nat],
        [IDL.Vec(IDL.Nat)],
        [],
      ),
    'square' : IDL.Func([IDL.Nat], [IDL.Int], []),
    'sum_of_array' : IDL.Func([IDL.Vec(IDL.Nat)], [IDL.Nat], []),
    'test' : IDL.Func([], [], []),
  });
};
export const init = ({ IDL }) => { return []; };
