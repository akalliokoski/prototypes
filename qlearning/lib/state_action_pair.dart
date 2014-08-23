class StateActionPair {
  final int state, action;
  StateActionPair(this.state, this.action);
  
  int get hashCode {
    // Cantor pairing function
    var z = 0.5 * (state + action) * (state + action + 1) + action;
    return z.toInt();
  }
  
  bool operator==(other) {
    if (other is! StateActionPair) return false;
    StateActionPair pair = other;
    return state == pair.state && action == pair.action;
  }
  
  toString() => "($state, $action)";
}