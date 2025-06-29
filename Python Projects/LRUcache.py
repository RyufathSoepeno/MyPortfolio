from collections import OrderedDict

class LRUCache:
    def __init__(self, limit):
        self.limit = limit
        self.cache = OrderedDict()

    def get(self, key):
        if key not in self.cache:
            return -1
        # Move the key to the end to mark it as recently used
        self.cache.move_to_end(key)
        return self.cache[key]

    def put(self, key, value):
        if key in self.cache:
            # Update the value and mark as recently used
            self.cache.move_to_end(key)
        self.cache[key] = value
        # Remove least recently used item if limit is exceeded
        if len(self.cache) > self.limit:
            self.cache.popitem(last=False)  # Remove the first item (least recently used)
