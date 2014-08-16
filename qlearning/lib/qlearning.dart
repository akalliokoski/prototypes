library qlearning;

class StateActionPair {
  final int state, action;
  StateActionPair(this.state, this.action);
  
  int get hashCode {
    int result = 17;
    result = 37 * result + state.hashCode;
    result = 37 * result + action.hashCode;
    return result;
  }
  
  bool operator==(other) {
    if (other is! StateActionPair) return false;
    StateActionPair pair = other;
    return state == pair.state && action == pair.action;
  }
  
  toString() => "($state, $action)";
}

class QLearn {
  List<int> actions;
  double epsilon;
  double alpha;
  double gamma;
  
  Map<StateActionPair, double> q;
  
  QLearn(List<int> actions, {epsilon: 0.1, alpha: 0.2, gamma: 0.9})
  {
    this.actions = actions.toList();
    this.epsilon = epsilon;
    this.alpha = alpha;
    this.gamma = gamma;
  }
  
  
}