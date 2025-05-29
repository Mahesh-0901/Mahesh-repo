DROP TABLE IF EXISTS ps_img_data;
CREATE TABLE ps_img_data (
    uuid text PRIMARY KEY,
    content blob,
    ext text,
    length bigint,
    md5sum text,
    name text,
    ts bigint
) WITH bloom_filter_fp_chance = 0.01
    AND caching = {'keys': 'ALL', 'rows_per_partition': 'ALL'}
    AND comment = ''
    AND compaction = {'class': 'LeveledCompactionStrategy', 'sstable_size_in_mb': '250'}
    AND compression = {'sstable_compression': 'org.apache.cassandra.io.compress.LZ4Compressor'}
    AND crc_check_chance = 1.0
    AND dclocal_read_repair_chance = 0.25
    AND default_time_to_live = 0
    AND gc_grace_seconds = 1296000
    AND max_index_interval = 2048
    AND memtable_flush_period_in_ms = 0
    AND min_index_interval = 128
    AND read_repair_chance = 0.5
    AND speculative_retry = '99.0PERCENTILE';

DROP TABLE IF EXISTS ps_blob_data;   
CREATE TABLE ps_blob_data (
    uuid text PRIMARY KEY,
    content blob,
    ext text,
    length bigint,
    md5sum text,
    name text,
    ts bigint
) WITH bloom_filter_fp_chance = 0.01
    AND caching = {'keys': 'ALL', 'rows_per_partition': 'ALL'}
    AND comment = ''
    AND compaction = {'class': 'LeveledCompactionStrategy', 'sstable_size_in_mb': '250'}
    AND compression = {'sstable_compression': 'org.apache.cassandra.io.compress.LZ4Compressor'}
    AND crc_check_chance = 1.0
    AND dclocal_read_repair_chance = 0.25
    AND default_time_to_live = 0
    AND gc_grace_seconds = 1296000
    AND max_index_interval = 2048
    AND memtable_flush_period_in_ms = 0
    AND min_index_interval = 128
    AND read_repair_chance = 0.5
    AND speculative_retry = '99.0PERCENTILE';

DROP TABLE IF EXISTS ps_sync_data;   
CREATE TABLE ps_sync_data (
    uuid text PRIMARY KEY,
    content text,
    length bigint,
    lname text,
    pid text,
    ts bigint,
    clazz text,
    error text,
    uri text,
) WITH bloom_filter_fp_chance = 0.01
    AND caching = {'keys': 'ALL', 'rows_per_partition': 'ALL'}
    AND comment = ''
    AND compaction = {'class': 'LeveledCompactionStrategy', 'sstable_size_in_mb': '250'}
    AND compression = {'sstable_compression': 'org.apache.cassandra.io.compress.LZ4Compressor'}
    AND crc_check_chance = 1.0
    AND dclocal_read_repair_chance = 0.25
    AND default_time_to_live = 0
    AND gc_grace_seconds = 1296000
    AND max_index_interval = 2048
    AND memtable_flush_period_in_ms = 0
    AND min_index_interval = 128
    AND read_repair_chance = 0.5
    AND speculative_retry = '99.0PERCENTILE';
 
DROP TABLE IF EXISTS ps_sync_failed_data;   
CREATE TABLE ps_sync_failed_data (
    uuid text PRIMARY KEY,
    content text,
    length bigint,
    lname text,
    pid text,
    ts bigint,
    clazz text,
    error text,
    uri text,
) WITH bloom_filter_fp_chance = 0.01
    AND caching = {'keys': 'ALL', 'rows_per_partition': 'ALL'}
    AND comment = ''
    AND compaction = {'class': 'LeveledCompactionStrategy', 'sstable_size_in_mb': '250'}
    AND compression = {'sstable_compression': 'org.apache.cassandra.io.compress.LZ4Compressor'}
    AND crc_check_chance = 1.0
    AND dclocal_read_repair_chance = 0.25
    AND default_time_to_live = 0
    AND gc_grace_seconds = 1296000
    AND max_index_interval = 2048
    AND memtable_flush_period_in_ms = 0
    AND min_index_interval = 128
    AND read_repair_chance = 0.5
    AND speculative_retry = '99.0PERCENTILE';
       
DROP TABLE IF EXISTS ps_audit_data;   
CREATE TABLE ps_audit_data (
    uuid text PRIMARY KEY,
    ts bigint,
    before text,
    after text,
) WITH bloom_filter_fp_chance = 0.01
    AND caching = {'keys': 'ALL', 'rows_per_partition': 'ALL'}
    AND comment = ''
    AND compaction = {'class': 'LeveledCompactionStrategy', 'sstable_size_in_mb': '250'}
    AND compression = {'sstable_compression': 'org.apache.cassandra.io.compress.LZ4Compressor'}
    AND crc_check_chance = 1.0
    AND dclocal_read_repair_chance = 0.25
    AND default_time_to_live = 0
    AND gc_grace_seconds = 1296000
    AND max_index_interval = 2048
    AND memtable_flush_period_in_ms = 0
    AND min_index_interval = 128
    AND read_repair_chance = 0.5
    AND speculative_retry = '99.0PERCENTILE';
       
DROP TABLE IF EXISTS ps_notify_log;   
CREATE TABLE ps_notify_log (
    uuid text PRIMARY KEY,
    ts bigint,
    payload text,
) WITH bloom_filter_fp_chance = 0.01
    AND caching = {'keys': 'ALL', 'rows_per_partition': 'ALL'}
    AND comment = ''
    AND compaction = {'class': 'LeveledCompactionStrategy', 'sstable_size_in_mb': '250'}
    AND compression = {'sstable_compression': 'org.apache.cassandra.io.compress.LZ4Compressor'}
    AND crc_check_chance = 1.0
    AND dclocal_read_repair_chance = 0.25
    AND default_time_to_live = 0
    AND gc_grace_seconds = 1296000
    AND max_index_interval = 2048
    AND memtable_flush_period_in_ms = 0
    AND min_index_interval = 128
    AND read_repair_chance = 0.5
    AND speculative_retry = '99.0PERCENTILE';  

DROP TABLE IF EXISTS ps_payment_transaction;   
CREATE TABLE ps_payment_transaction (
    uuid text PRIMARY KEY,
    ts bigint,
    payload text,
) WITH bloom_filter_fp_chance = 0.01
    AND caching = {'keys': 'ALL', 'rows_per_partition': 'ALL'}
    AND comment = ''
    AND compaction = {'class': 'LeveledCompactionStrategy', 'sstable_size_in_mb': '250'}
    AND compression = {'sstable_compression': 'org.apache.cassandra.io.compress.LZ4Compressor'}
    AND crc_check_chance = 1.0
    AND dclocal_read_repair_chance = 0.25
    AND default_time_to_live = 0
    AND gc_grace_seconds = 1296000
    AND max_index_interval = 2048
    AND memtable_flush_period_in_ms = 0
    AND min_index_interval = 128
    AND read_repair_chance = 0.5
    AND speculative_retry = '99.0PERCENTILE';
    
DROP TABLE IF EXISTS ps_invoice_payment_transaction_settle;   
CREATE TABLE ps_invoice_payment_settle (
    uuid text PRIMARY KEY,
    ts bigint,
    req_payload text,
    res_payload text,
) WITH bloom_filter_fp_chance = 0.01
    AND caching = {'keys': 'ALL', 'rows_per_partition': 'ALL'}
    AND comment = ''
    AND compaction = {'class': 'LeveledCompactionStrategy', 'sstable_size_in_mb': '250'}
    AND compression = {'sstable_compression': 'org.apache.cassandra.io.compress.LZ4Compressor'}
    AND crc_check_chance = 1.0
    AND dclocal_read_repair_chance = 0.25
    AND default_time_to_live = 0
    AND gc_grace_seconds = 1296000
    AND max_index_interval = 2048
    AND memtable_flush_period_in_ms = 0
    AND min_index_interval = 128
    AND read_repair_chance = 0.5
    AND speculative_retry = '99.0PERCENTILE';  
    
DROP TABLE IF EXISTS ps_gmaps_tile_data;
CREATE TABLE ps_gmaps_tile_data (
    uuid text PRIMARY KEY,
    x bigint,
    y bigint,
    z int,
    content blob,
    ext text,
    length bigint,
    md5sum text,
    ts bigint
) WITH bloom_filter_fp_chance = 0.01
    AND caching = {'keys': 'ALL', 'rows_per_partition': 'ALL'}
    AND comment = ''
    AND compaction = {'class': 'LeveledCompactionStrategy', 'sstable_size_in_mb': '250'}
    AND compression = {'sstable_compression': 'org.apache.cassandra.io.compress.LZ4Compressor'}
    AND crc_check_chance = 1.0
    AND dclocal_read_repair_chance = 0.25
    AND default_time_to_live = 0
    AND gc_grace_seconds = 1296000
    AND max_index_interval = 2048
    AND memtable_flush_period_in_ms = 0
    AND min_index_interval = 128
    AND read_repair_chance = 0.5
    AND speculative_retry = '99.0PERCENTILE';    
    
DROP TABLE IF EXISTS ps_gmaps_tile_failed_data;
CREATE TABLE ps_gmaps_tile_failed_data (
    uuid text PRIMARY KEY,
    code text,
    message text,
    ts bigint
) WITH bloom_filter_fp_chance = 0.01
    AND caching = {'keys': 'ALL', 'rows_per_partition': 'ALL'}
    AND comment = ''
    AND compaction = {'class': 'LeveledCompactionStrategy', 'sstable_size_in_mb': '250'}
    AND compression = {'sstable_compression': 'org.apache.cassandra.io.compress.LZ4Compressor'}
    AND crc_check_chance = 1.0
    AND dclocal_read_repair_chance = 0.25
    AND default_time_to_live = 0
    AND gc_grace_seconds = 1296000
    AND max_index_interval = 2048
    AND memtable_flush_period_in_ms = 0
    AND min_index_interval = 128
    AND read_repair_chance = 0.5
    AND speculative_retry = '99.0PERCENTILE';  
    
DROP TABLE IF EXISTS ps_gmaps_polygon_data;
CREATE TABLE ps_gmaps_polygon_data (
    uuid text PRIMARY KEY,
    pid text,
    vid text,
    coords text,
    ts bigint
) WITH bloom_filter_fp_chance = 0.01
    AND caching = {'keys': 'ALL', 'rows_per_partition': 'ALL'}
    AND comment = ''
    AND compaction = {'class': 'LeveledCompactionStrategy', 'sstable_size_in_mb': '250'}
    AND compression = {'sstable_compression': 'org.apache.cassandra.io.compress.LZ4Compressor'}
    AND crc_check_chance = 1.0
    AND dclocal_read_repair_chance = 0.25
    AND default_time_to_live = 0
    AND gc_grace_seconds = 1296000
    AND max_index_interval = 2048
    AND memtable_flush_period_in_ms = 0
    AND min_index_interval = 128
    AND read_repair_chance = 0.5
    AND speculative_retry = '99.0PERCENTILE';    
    
    
DROP TABLE IF EXISTS ps_archive_failed_data;
CREATE TABLE ps_archive_failed_data (
    uuid text PRIMARY KEY,
    error text,
    content text,
    category text,
    archive_import_metric_id text,
    ts bigint,
) WITH bloom_filter_fp_chance = 0.01
    AND caching = {'keys': 'ALL', 'rows_per_partition': 'ALL'}
    AND comment = ''
    AND compaction = {'class': 'LeveledCompactionStrategy', 'sstable_size_in_mb': '250'}
    AND compression = {'sstable_compression': 'org.apache.cassandra.io.compress.LZ4Compressor'}
    AND crc_check_chance = 1.0
    AND dclocal_read_repair_chance = 0.25
    AND default_time_to_live = 0
    AND gc_grace_seconds = 1296000
    AND max_index_interval = 2048
    AND memtable_flush_period_in_ms = 0
    AND min_index_interval = 128
    AND read_repair_chance = 0.5
    AND speculative_retry = '99.0PERCENTILE';        
 
 DROP TABLE IF EXISTS ps_health_monitor;
CREATE TABLE ps_health_monitor (
    uuid text PRIMARY KEY,
    ts bigint,
) WITH bloom_filter_fp_chance = 0.01
    AND caching = {'keys': 'ALL', 'rows_per_partition': 'ALL'}
    AND comment = ''
    AND compaction = {'class': 'LeveledCompactionStrategy', 'sstable_size_in_mb': '250'}
    AND compression = {'sstable_compression': 'org.apache.cassandra.io.compress.LZ4Compressor'}
    AND crc_check_chance = 1.0
    AND dclocal_read_repair_chance = 0.25
    AND default_time_to_live = 0
    AND gc_grace_seconds = 1296000
    AND max_index_interval = 2048
    AND memtable_flush_period_in_ms = 0
    AND min_index_interval = 128
    AND read_repair_chance = 0.5
    AND speculative_retry = '99.0PERCENTILE';
    
    
DROP TABLE IF EXISTS ps_print_format_data;
CREATE TABLE ps_print_format_data (
    uuid text PRIMARY KEY,
    plain_data text,
    json_data text,
    category text,
    property text,
    ts bigint
) WITH bloom_filter_fp_chance = 0.01
    AND caching = {'keys': 'ALL', 'rows_per_partition': 'ALL'}
    AND comment = ''
    AND compaction = {'class': 'LeveledCompactionStrategy', 'sstable_size_in_mb': '250'}
    AND compression = {'sstable_compression': 'org.apache.cassandra.io.compress.LZ4Compressor'}
    AND crc_check_chance = 1.0
    AND dclocal_read_repair_chance = 0.25
    AND default_time_to_live = 0
    AND gc_grace_seconds = 1296000
    AND max_index_interval = 2048
    AND memtable_flush_period_in_ms = 0
    AND min_index_interval = 128
    AND read_repair_chance = 0.5
    AND speculative_retry = '99.0PERCENTILE'; 
    
    
DROP TABLE IF EXISTS ps_failed_aadhaar_qr_data;
CREATE TABLE ps_failed_aadhaar_qr_data (
    uuid text PRIMARY KEY,
    qr_data text,
    big_qr_ocr_data text,
    ocr_front_data text,
    ocr_back_data text,
    ts bigint
) WITH bloom_filter_fp_chance = 0.01
    AND caching = {'keys': 'ALL', 'rows_per_partition': 'ALL'}
    AND comment = ''
    AND compaction = {'class': 'LeveledCompactionStrategy', 'sstable_size_in_mb': '250'}
    AND compression = {'sstable_compression': 'org.apache.cassandra.io.compress.LZ4Compressor'}
    AND crc_check_chance = 1.0
    AND dclocal_read_repair_chance = 0.25
    AND default_time_to_live = 0
    AND gc_grace_seconds = 1296000
    AND max_index_interval = 2048
    AND memtable_flush_period_in_ms = 0
    AND min_index_interval = 128
    AND read_repair_chance = 0.5
    AND speculative_retry = '99.0PERCENTILE';
    