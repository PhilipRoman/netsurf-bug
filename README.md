# DESCRIPTION

I discovered this while trying to use `man -H` without `psutils` installed, which produced empty images.
The bug is relatively harmless and almost impossible to come across in a real-life scenario but since netsurf works with untrusted input its probably a good idea to patch it.

The problem happens when the total size of images is zero but total number of them is nonzero.

# REPRODUCE

* open mmap.html in netsurf
* close browser
* browser exits with SIGFPE

## SOURCE LOCATION

`content/handlers/image/image_cache.c` line 476

## RELEVANT CODE

```c
if (op_count > 0) {
	uint64_t op_size;

	op_size = image_cache->hit_size +
		image_cache->miss_size +
		image_cache->fail_size;

	NSLOG(netsurf, INFO,
	      "Cache total/hit/miss/fail (counts) %d/%d/%d/%d (100%%/%d%%/%d%%/%d%%)",
	      op_count,
	      image_cache->hit_count,
	      image_cache->miss_count,
	      image_cache->fail_count,
	      (image_cache->hit_count * 100) / op_count,
	      (image_cache->miss_count * 100) / op_count,
	      (image_cache->fail_count * 100) / op_count);
	NSLOG(netsurf, INFO,
	      "Cache total/hit/miss/fail (size) %"PRIu64"/%"PRIu64"/%"PRIu64"/%"PRIu64" (100%%/%"PRId64"%%/%"PRId64"%%/%"PRId64"%%)",
	      op_size,
	      image_cache->hit_size,
	      image_cache->miss_size,
	      image_cache->fail_size,
	      /* ===> DIVIDE BY ZERO <=== */
	      (image_cache->hit_size * 100) / op_size,
	      (image_cache->miss_size * 100) / op_size,
	      (image_cache->fail_size * 100) / op_size);
}
```
