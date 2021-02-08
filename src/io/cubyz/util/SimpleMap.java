package io.cubyz.util;

import java.util.ArrayList;

public class SimpleMap<K, V> {
	public final ArrayList<K> keys = new ArrayList<>();
	public final ArrayList<V> values = new ArrayList<>();
	public void add(K key, V value) {
		keys.add(key);
		values.add(value);
	}
}
