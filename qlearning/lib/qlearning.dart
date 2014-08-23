library qlearning;

import 'state_action_pair.dart';

class QLearning {
  List<int> actions;
  double epsilon;
  double alpha;
  double gamma;
  
  Map<StateActionPair, double> q;
  
  QLearning(List<int> actions, {epsilon: 0.1, alpha: 0.2, gamma: 0.9})
  {
    this.actions = actions.toList();
    this.epsilon = epsilon;
    this.alpha = alpha;
    this.gamma = gamma;
  }
 
  learn(int state1, int action1, int reward, int state2)
  {
    // TODO
  }
  
  int chooseAction(int state)
  {
    // TODO
  }
  
  double _getQ(int state, int action, {defaultValue: 0.0})
  {
    var pair = new StateActionPair(state, action);
    return q.containsKey(pair) ? q[pair] : defaultValue;
  }
  
  _setQ(int state, int action, double value)
  {
    q[new StateActionPair(state, action)] = value;
  }
  
  _learnQ(int state, int action, double value)
  {
    var oldValue = _getQ(state, action);
    var newValue = oldValue + alpha * (value - oldValue);
    _setQ(state, action, newValue);
  }
}