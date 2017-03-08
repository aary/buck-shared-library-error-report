#include <iostream>
#include <cassert>

#include <tbb/concurrent_queue.h>

int main() {
    auto q = tbb::concurrent_queue<int>{};
    q.push(1);
    auto top_value = int{};
    assert(q.try_pop(top_value));
    assert(top_value == 1);
    assert(q.empty());

    return 0;
}
