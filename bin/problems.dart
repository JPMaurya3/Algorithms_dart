void main() {
  List<int> start = [1, 3, 0, 5, 8, 5];
  List<int> end = [2, 4, 6, 7, 9, 9];

  Solution solution = Solution();
  int result = solution.maxMeetings(start, end);
  print("The maximum number of meetings that can be attended: $result");
}

class Solution {
  int maxMeetings(List<int> start, List<int> end) {
    int n = start.length;
    List<MapEntry<int, int>> v = [];
    for (int i = 0; i < n; i++) {
      MapEntry<int, int> p = MapEntry(start[i], end[i]);
      v.add(p);
    }
    v.sort((a, b) => a.value.compareTo(b.value));
    int count = 1;
    int endTime = v[0].value;
    for (int i = 1; i < n; i++) {
      if (v[i].key >= endTime) {
        count++;
        endTime = v[i].value;
      }
    }
    return count;
  }
}
